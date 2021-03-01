class User < ApplicationRecord

    has_many :requests
    has_many :memberships
    has_many :conversations, through: :memberships
    has_many :messages

    has_secure_password


    validates :email, presence: true
    validates :email, format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "must be in the correct format"}
    validates :email, uniqueness: true
    validates :password, presence: true
    validates :password, format: {with: /\A\S{8,20}\Z/, message: "must be 8-20 characters, without spaces"}
    validates :first_name, format: {with: /\A([a-zA-Z]|-){2,30}\Z/, message: "may only include letters or hyphens"}
    validates :last_name, format: {with: /\A([a-zA-Z]|-){2,30}\Z/, message: "may only include letters or hyphens"}

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def join_date
        date_string = self.created_at.strftime("%Y-%m")
        month_hash = {"January": "01", "February": "02", "March": "03", "April": "04", "May": "05", "June": "06", "July": "07", "August": "08", "September": "09", "October": "10", "November": "11", "December": "12"}
        date_arr = date_string.split("-")
        month = date_arr[1]
        return "#{month_hash.key(month)} #{date_arr[0]}"
    end

end
