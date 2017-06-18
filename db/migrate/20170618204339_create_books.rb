class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.bigint :book_id
      t.integer :publication_year
      t.integer :average_rating
      t.string :image_url
      t.string :small_image_url
      t.integer :author_id

      t.timestamps
    end
  end
end
