class Color < ApplicationRecord
  belongs_to :category
  has_one :quiz, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :code, presence: true, uniqueness: true
  validates :css_class, presence: true, uniqueness: true

  enum season_type: { uncategorized: 0, spring: 1, summer: 2, autumn: 3, winter: 4 }
end
