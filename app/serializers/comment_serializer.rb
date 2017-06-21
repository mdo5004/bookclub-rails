class CommentSerializer < ActiveModel::Serializer
    attributes :page, :text, :book_id
    has_one :user
end