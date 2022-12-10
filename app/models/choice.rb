class Choice < ApplicationRecord
  belongs_to :quiz
  has_many :user_choices, dependent: :destroy

  validates :content, presence: true
  validates :is_answer, presence: true

  enum is_answer: { correct: 0, incorrect: 1 }
end
