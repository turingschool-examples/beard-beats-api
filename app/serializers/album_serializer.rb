class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :songs

  def songs
    object.songs.map &:id
  end
end
