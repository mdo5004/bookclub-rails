class CreateUserBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :user_books do |t|
      t.integer :user_id
      t.integer :book_id
      t.integer :page, default: 1

      t.timestamps
    end
  end
end
