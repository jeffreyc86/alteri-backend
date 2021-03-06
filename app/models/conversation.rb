class Conversation < ApplicationRecord

    belongs_to :request
    has_many :memberships
    has_many :messages
    has_many :users, through: :memberships

    def request_info
        {   
            recipient_id: self.request.recipient_id,
            recipient_name: self.request.recipient.first_name,
            recipient_img: self.request.recipient.photo_url,
            donor_id: self.request.donor_id,
            donor_name: self.request.donor.first_name,
            donor_img: self.request.donor.photo_url
        }
    end

end
