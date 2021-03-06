class Message < ApplicationRecord

    belongs_to :conversation
    belongs_to :user

    validates :content, presence: true

    def user_photo
        self.user.photo_url
    end
    
end
