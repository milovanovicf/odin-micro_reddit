class User < ApplicationRecord
    has_many :posts
    has_many :comments

    validates :username, presence: true, length: {minimum:3, maximum:10}, uniqueness: true
    validates :password, presence: true, length: {minimum: 5}
end
