class AnswersController < ApplicationController
  def create
    Answer.create(answer_params)
    # render json:{ post: answer }
    redirect_to root_path  
  end

  private
  def answer_params
    params.require(:answer).permit(:answer, :comment).merge(user_id: current_user.id, question_id: params[:question_id])
  end
end
