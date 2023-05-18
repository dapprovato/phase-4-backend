class User < ApplicationRecord
    has_many :tasks
    has_many :projects, through: :tasks

    validates :name, uniqueness: true
end