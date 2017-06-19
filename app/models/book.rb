class Book < ApplicationRecord
#    belongs_to :author
    has_many :comments
    
    def self.visible
        Book.where("visible = ?", true)
    end
end
