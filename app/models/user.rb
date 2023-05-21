class User < ApplicationRecord

    has_secure_password

    has_many :tasks
    has_many :projects, through: :tasks

    validates :name, uniqueness: true
end