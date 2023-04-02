class Usr < ApplicationRecord
    has_many :books
    has_many :services, through: :books
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    has_secure_password
end
