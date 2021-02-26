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

end
