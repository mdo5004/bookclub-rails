class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :location
      t.text :body
      t.string :rating
      t.string :image_url
      t.string :small_image_url

      t.timestamps
    end
  end
end
