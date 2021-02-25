class RequestSerializer < ActiveModel::Serializer
  attributes :id, :recipient_id, :donor_id, :accepted, :fulfilled
end
