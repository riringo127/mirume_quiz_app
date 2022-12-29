class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :quiz

  validates :user_id, uniqueness: { scope: :quiz_id }
end
