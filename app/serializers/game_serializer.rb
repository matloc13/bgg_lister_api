class GameSerializer < ActiveModel::Serializer
  attributes :id, :listname_id, :name,  :img, :bggid
end
