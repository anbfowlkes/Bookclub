class Book < ApplicationRecord
    has_many :book_members
    has_many :members, through: :book_members
end
