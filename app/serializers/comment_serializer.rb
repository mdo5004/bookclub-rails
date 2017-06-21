class CommentSerializer < ActiveModel::Serializer
    attributes :page, :text 
    has_one :user
end