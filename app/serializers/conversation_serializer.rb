class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :request_id, :request_info, :active, :created_at
end
