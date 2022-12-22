class BookMember < ApplicationRecord
    belongs_to :contact
    belongs_to :deal
end
