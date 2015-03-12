class Song

  attr_reader :title, :length
  attr_accessor :playing

  def initialize(title, length)
    @title = title
    @length = length
    @playing = false
  end

end
