class AddBookDetailsToReviews < ActiveRecord::Migration[5.0]
  def change
      add_column :reviews, :book_title, :string
      add_column :reviews, :book_url, :string
  end
end
