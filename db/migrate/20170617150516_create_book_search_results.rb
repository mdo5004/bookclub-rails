class CreateBookSearchResults < ActiveRecord::Migration[5.0]
  def change
    create_table :book_search_results do |t|
      t.string :author
      t.string :author_id
      t.string :title
      t.string :book_id
      t.string :publication_year
      t.string :average_rating
      t.string :image_url
      t.string :small_image_url

      t.timestamps
    end
  end
end
