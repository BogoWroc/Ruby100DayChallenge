# frozen_string_literal: true

##
# Display class is representing player display.
class Display
  # Send notification at the display.
  #
  # @param [String, #read] contents of the notification
  # @return nil
  def send(msg)
    puts msg
  end
end

##
#  Player class is representing simple music player.
class Player
  def initialize(display, playlist = [])
    @playlist = playlist
    @display = display
    @on = false
    @current_song_index = 0
  end

  def turn_on
    @on = true
    @display.send('Player on ...')
  end

  def turn_off
    @on = false
    @display.send('Player off :)')
  end

  def on?
    @on
  end

  def play
    current_song = @playlist[@current_song_index]
    @display.send("Start playing: #{current_song}")
  end

  def stop
    @display.send('Stop playing.')
  end

  # Override default to string method
  def to_s
    "The Player instance has #{@playlist} playlist."
  end
end
