class Usr < ApplicationRecord
    has_many :bookings
    has_many :services, through: :bookings
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    has_secure_password
end
