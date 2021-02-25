class User < ApplicationRecord

    has_many :requests
    has_many :memberships
    has_many :conversations, through: :memberships
    has_many :messages


    validates :username, presence: true
    validates :username, format: {with: /^\A\w{5,20}\Z$/, message: "accepts 5-20 characters using letters, numbers, and underscores(_)"}
    validates :username, uniqueness: true
    validates :password, presence: true
    validates :password, format: {with: /^\A\S{8,20}\Z$/, message: "must be 8-20 characters, without spaces"}

end
