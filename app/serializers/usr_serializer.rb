class UsrSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password,
  has_many :books
  has_many :services, through: :books
  
end
