class RequestSerializer < ActiveModel::Serializer
  attributes :id, :recipient_id, :recipient, :donor_id, :donor, :accepted, :fulfilled, :deleted
end
