class User < ApplicationRecord
    has_many :comments
    has_many :user_books
    has_many :books, through: :user_books

    has_secure_password
    has_secure_token

    def invalidate_token
        self.update_columns(token: nil)
    end

    def self.valid_login?(username, password)
        user = find_by(username: username)
        if user && user.authenticate(password)
            user
        end
    end
end
