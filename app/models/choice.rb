class Choice < ApplicationRecord
  belongs_to :quiz

  validates :content, presence: true
  validates :is_answer, presence: true

  enum is_answer: { correct: 0, incorrect: 1 }
end
