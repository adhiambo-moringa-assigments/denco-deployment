class Service < ApplicationRecord
    has_many :books
    has_many :usrs, through: :books
end

