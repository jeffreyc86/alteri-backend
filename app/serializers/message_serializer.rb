class MessageSerializer < ActiveModel::Serializer
  attributes :id, :conversation_id, :user_id, :user_photo, :content, :created_at
end
