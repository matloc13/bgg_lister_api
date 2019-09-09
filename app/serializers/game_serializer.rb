class GameSerializer < ActiveModel::Serializers
  attributes :id, :listname_id, :name,  :img, :bggid
end
