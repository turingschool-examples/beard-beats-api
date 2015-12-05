Artist.create(name: "Iron and Wine").tap do |artist|
  artist.albums << Album.new(title: "The Creek Drank the Cradle", year: 2002).tap do |album|
    album.songs << Song.new(title: "Lion's Mane")
    album.songs << Song.new(title: "Promising Light")
  end

  artist.albums << Album.new(title: "The Shepard's Dog", year: 2007).tap do |album|
    album.songs << Song.new(title: "The Boy with a Coin")
    album.songs << Song.new(title: "Wolves")
  end
end

Artist.create(name: "Bon Iver").tap do |artist|
  artist.albums << Album.new(title: "For Emma, Forever Ago", year: 2007).tap do |album|
    album.songs << Song.new(title: "Flume")
    album.songs << Song.new(title: "Skinny Love")
  end

  artist.albums << Album.new(title: "Bon Iver", year: 2012).tap do |album|
    album.songs << Song.new(title: "Holocene")
    album.songs << Song.new(title: "Towers")
  end
end
