class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    artists.map {|artist| artist.name}
  end
end
