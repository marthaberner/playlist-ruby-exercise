class Playlist
  attr_accessor :playlist, :now_playing

  def initialize(playlist = [])
    @playlist = playlist
    @now_playing = nil
  end

  def empty?
    playlist.empty?
  end

  def add_song(song)
    playlist << song
  end

  def song_names
    playlist.map { |song| song.title }
  end

  def remove_song(song)
    playlist.delete(song)
  end

  def total_length
    playlist.inject(0) {|memo, song| memo + song.length }
  end

  def swap(song_1, song_2)
    song_1_index = playlist.index(song_1)
    song_2_index = playlist.index(song_2)
    playlist[song_1_index] = song_2
    playlist[song_2_index] = song_1
  end

  def play
    self.now_playing = playlist.first
  end

  def next
      current_song_index = playlist.index(now_playing)
      next_song_index = current_song_index + 1
      current_song = playlist[next_song_index]
      self.now_playing = current_song
  end

end
