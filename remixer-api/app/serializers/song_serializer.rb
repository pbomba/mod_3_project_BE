class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist_name, :song_data 
end
