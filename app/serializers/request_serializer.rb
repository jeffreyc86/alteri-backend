class RequestSerializer < ActiveModel::Serializer
  attributes :id, :recipient_id, :recipient_name, :recipient_img, :recipient_loc, :donor_id, :donor_name, :donor_img, :accepted, :fulfilled, :deleted, :created_date

  has_many :request_items

end
