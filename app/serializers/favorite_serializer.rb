class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :active, :books
end
