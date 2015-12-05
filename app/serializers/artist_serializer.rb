class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :albums

  def albums
    object.albums.map &:id
  end
end
