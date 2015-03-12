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
  end

  def total_length
    result = 0
    playlist.each do |song|
      result += song.length
    end
    result
  end

  def swap(song_1, song_2)
    song_1_index = playlist.index(song_1)
    song_2_index = playlist.index(song_2)
    playlist[song_1_index] = song_2
    playlist[song_2_index] = song_1
  end

  def now_playing
    result = nil
    playlist.each do |song|
      if song.playing == true
        result = song
      end
    end
    result
  end

  def play
    playlist[0].playing = true
  end

  def next
    if now_playing
      current_song_index = playlist.index(now_playing)
      now_playing.playing = false
      next_song_index = current_song_index + 1
      current_song = playlist[next_song_index]
      if current_song != nil
        current_song.playing = true
      end
    end
  end

end
