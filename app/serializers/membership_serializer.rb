class MembershipSerializer < ActiveModel::Serializer
  attributes :id, :conversation_id, :user_id, :last_read
end
