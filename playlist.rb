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

  def remove_song(song)
    playlist.delete(song)
    playlist
  end

  def total_length
    result = 0
    playlist.each do |song|
      result += song.length
    end
    result
  end

end
