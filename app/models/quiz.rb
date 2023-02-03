class Quiz < ApplicationRecord
  TRIAL = [34,16,95,114,22].freeze
  belongs_to :color
  has_many :choices, dependent: :destroy
  has_many :incorrect_answers, dependent: :destroy
  has_many :correct_answers, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

  validates :quiz_format, presence: true
  enum quiz_format: { all_season: 0, spring: 1, summer: 2, autumn: 3, winter: 4, base: 5 }
end
