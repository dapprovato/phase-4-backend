class User < ApplicationRecord

    has_secure_password

    has_many :tasks
    has_many :projects, through: :tasks

    validates :username, uniqueness: true
    validates_presence_of :username, :password
end