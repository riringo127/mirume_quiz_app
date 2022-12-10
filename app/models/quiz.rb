class Quiz < ApplicationRecord
  belongs_to :color
  has_many :choices, dependent: :destroy
end
