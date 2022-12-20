class Member < ApplicationRecord
    has_many :books, through: :book_members
end
