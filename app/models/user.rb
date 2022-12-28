class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :incorrect_answers, dependent: :destroy
  has_many :correct_answers, dependent: :destroy

  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :reset_password_token, uniqueness: true, allow_nil: true

  validates :email, uniqueness: true, presence: true
  validates :name, presence: true, length: { maximum: 255 }
  validates :role, presence: true
  
  enum role: { general: 0, admin: 1 }

  has_many :bookmarks, dependent: :destroy
  has_many :bookmark_quizzes, through: :bookmarks, source: :quiz

  def bookmark(quiz)
    bookmark_quizzes << quiz
  end

  def unbookmark(quiz)
    bookmark_quizzes.destory (quiz)
  end

  def bookmark?(quiz)
    bookmark_quizzes.include?(quiz)
  end
end
