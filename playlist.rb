class Playlist
  attr_accessor :playlist

  def initialize(playlist = [])
    @playlist = playlist
  end

  def empty?
    playlist.length == 0
  end

  def add_song(song)
    playlist << song
  end

  def song_names
    playlist.map do |song|
      song.title
    end
  end

end
