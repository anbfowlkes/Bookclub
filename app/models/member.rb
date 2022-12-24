class Member < ApplicationRecord
    has_many :book_members
    has_many :books, through: :book_members
end
