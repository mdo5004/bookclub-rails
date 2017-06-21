class Comment < ApplicationRecord
    belongs_to :book
    belongs_to :user
    validates :text, :user_id, :page, :book_id, presence: true
end
