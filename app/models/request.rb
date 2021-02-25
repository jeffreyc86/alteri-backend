class Request < ApplicationRecord

    belongs_to :recipient, class_name: "User"
    belongs_to :donor, class_name: "User", optional: true
    has_many :request_items
    has_many :items, through: :request_items

    


end
