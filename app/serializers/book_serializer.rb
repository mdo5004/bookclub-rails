class BookSerializer < ActiveModel::Serializer
   attributes :id, :title, :goodreads_book_id, :publication_year, :average_rating, :image_url, :small_image_url, :author_id 
end