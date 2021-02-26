class User < ApplicationRecord

    has_many :requests
    has_many :memberships
    has_many :conversations, through: :memberships
    has_many :messages


    validates :email, presence: true
    validates :username, format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "must be in the correct format"}
    validates :email, uniqueness: true
    validates :password, presence: true
    validates :password, format: {with: /^\A\S{8,20}\Z$/, message: "must be 8-20 characters, without spaces"}

end
