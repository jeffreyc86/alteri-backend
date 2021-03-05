class RequestItemSerializer < ActiveModel::Serializer
  attributes :id, :request_id, :item_id, :item_name, :item_category, :item_url, :quantity, :preference
end
