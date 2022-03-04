class QuestionsController < ApplicationController
  
  def index
    query = "SELECT * FROM questions order by id DESC"
    @questions = Question.find_by_sql(query)
    @answer = Answer.new
  end
  
  def new
    @question = Question.new
  end

  def create
    Question.create(question_params)
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
  end

  private
  def question_params
    params.require(:question).permit(:question, :choice_number, :choice1, :choice2, :choice3, :choice4, 
                                     :choice5, :choice6, :choice7, :choice8, :choice9, :choice10).merge(user_id: current_user.id)
  end
end
