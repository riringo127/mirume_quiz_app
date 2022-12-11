class Quiz < ApplicationRecord
  belongs_to :color
  has_many :choices, dependent: :destroy
  has_many :incorrect_answers, dependent: :destroy
  has_many :correct_answers, dependent: :destroy
end
