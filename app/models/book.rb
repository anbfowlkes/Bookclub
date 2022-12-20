class Book < ApplicationRecord
    has_many :members, through: :book_members
end
