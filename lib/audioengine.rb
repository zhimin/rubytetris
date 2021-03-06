module Tetris
  class AudioEngine

    def initialize(window)
      @window = window
      @samples = {}
      load_samples
    end

    def play(sample)
      @samples[sample].play
    end

    def load_sample(name, filename)
      @samples[name] = Gosu::Sample.new(@window, "#{filename}")
    end

    def load_samples
      load_sample(:ping, "assets/audio/ping.mp3")
      load_sample(:boom, "assets/audio/warp.mp3")
    end    

    def soundtrack # Game Soundtrack
      @soundtrack = [] 
      @soundtrack << Gosu::Song.new("assets/audio/boom.mp3")
      @song = @soundtrack.first
      @song.play(looping = true)
    end

  end

end
