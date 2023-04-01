class BookingSerializer < ActiveModel::Serializer
  attributes :id, :usr_id, :service_id, :name, :email, :phone, :moving_to, :moving_from, :moving_date, :house_size
end
