class Service < ApplicationRecord
    has_many :bookings
    has_many :usrs, through: :bookings
end

