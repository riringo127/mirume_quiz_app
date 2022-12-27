class Quiz < ApplicationRecord
  TRIAL = [34,13,95,114,22].freeze
  belongs_to :color
  has_many :choices, dependent: :destroy
  has_many :incorrect_answers, dependent: :destroy
  has_many :correct_answers, dependent: :destroy
end
