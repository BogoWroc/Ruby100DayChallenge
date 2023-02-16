# frozen_string_literal: true

require_relative '../../lib/#004/player'
require 'test/unit'
require 'mocha/test_unit'

class Test001Challenge < Test::Unit::TestCase
  PLAYLIST = ['Song 1', 'Song 2', 'Song 3'].freeze

  def test_should_be_possible_to_create_player_with_playlist
    player = Player.new(Display.new, PLAYLIST)
    assert_not_nil(player)
    assert_false(player.on?)
  end

  def test_should_override_to_s
    player = Player.new(Display.new, PLAYLIST)
    assert_equal('The Player instance has ["Song 1", "Song 2", "Song 3"] playlist.', player.to_s)
  end

  def test_should_be_possible_to_on_off
    player = Player.new(Display.new, PLAYLIST)
    player.turn_on
    assert_true(player.on?)
    player.turn_off
    assert_false(player.on?)
  end

  # rubocop:disable Metrics/MethodLength, Metrics/AbcSize
  def test_should_be_possible_to_play_stop_current_song
    display = mock
    display.expects(:send).with('Player on ...').at_least_once
    display.expects(:send).with('Start playing: Song 1').at_least_once
    display.expects(:send).with('Stop playing.').at_least_once
    display.expects(:send).with('Player off :)').at_least_once

    player = Player.new(display, PLAYLIST)
    player.turn_on
    player.play
    player.stop
    player.turn_off
    assert_false(player.on?)
  end
  # rubocop:enable Metrics/MethodLength, Metrics/AbcSize
end
