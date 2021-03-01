class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :image_url, :multiple
end
