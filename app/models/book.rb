class Book < ApplicationRecord
#    belongs_to :author
    has_many :comments
    has_many :user_books
    has_many :readers, through: :user_books, foreign_key: "user_id"
    
    def self.visible
        Book.where("visible = ?", true)
    end
end
