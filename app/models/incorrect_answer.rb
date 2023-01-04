class IncorrectAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :quiz

  validates :display, presence: true
  enum display: { true: 0, false: 1 }
end
