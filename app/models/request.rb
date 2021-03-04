class Request < ApplicationRecord

    belongs_to :recipient, class_name: "User"
    belongs_to :donor, class_name: "User", optional: true
    has_many :request_items
    has_many :items, through: :request_items

    validate :check_donor_and_recipient

    def check_donor_and_recipient
        errors.add("You can not fulfill your own request") if self.donor_id == self.recipient_id
    end

    def recipient_name
        self.recipient.first_name
    end

    def recipient_img
        self.recipient.photo_url
    end

    def recipient_loc
        {
            lat: self.recipient.lat,
            lng: self.recipient.lng
        }
    end

    def donor_name
        if self.donor
            self.donor.first_name
        else
            nil
        end
    end

    def donor_img
        if self.donor
            self.donor.photo_url
        else
            nil
        end
    end



    def created_date
        date_string = self.created_at.strftime("%Y-%m-%d")
        month_hash = {"January": "01", "February": "02", "March": "03", "April": "04", "May": "05", "June": "06", "July": "07", "August": "08", "September": "09", "October": "10", "November": "11", "December": "12"}
        date_arr = date_string.split("-")
        day = date_arr[2]
            if day[0] == "0"
                day = day[1]
            end
        month = date_arr[1]
        return "#{month_hash.key(month)} #{day}, #{date_arr[0]}"
    end

end
