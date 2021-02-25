class RequestItemSerializer < ActiveModel::Serializer
  attributes :id, :request_id, :item_id, :quantity, :preference
end
