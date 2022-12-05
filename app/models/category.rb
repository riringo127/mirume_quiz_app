class Category < ApplicationRecord
    has_many :colors

    validates :name, presence: true, uniqueness: true
end
