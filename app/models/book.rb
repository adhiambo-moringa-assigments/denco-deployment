class Book < ApplicationRecord
    belongs_to :usr
    belongs_to :service
end
