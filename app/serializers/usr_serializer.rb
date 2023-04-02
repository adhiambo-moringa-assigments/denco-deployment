class UsrSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :books, :services
end
