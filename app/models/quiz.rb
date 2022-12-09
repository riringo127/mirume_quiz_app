class Quiz < ApplicationRecord
  belongs_to :color
  has_many :choices, dependent: :destroy
  has_many :mistakes, dependent: :destroy
end
