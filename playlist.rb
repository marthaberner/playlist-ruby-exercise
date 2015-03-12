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

end
