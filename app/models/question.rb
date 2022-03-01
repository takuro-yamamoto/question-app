class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  validates :question, presence: true
  validates :choice_number, presence: true
  
end
