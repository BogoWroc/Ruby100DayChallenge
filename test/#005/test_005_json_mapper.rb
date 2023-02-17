# frozen_string_literal: true

require_relative '../../lib/#005/json_mapper'
require 'test/unit'
require 'mocha/test_unit'

class Test001Challenge < Test::Unit::TestCase
  def resolve_absolute_path_to(relative_path)
    "#{__dir__}/#{relative_path}"
  end

  def test_should_map_json_to_obj
    path_to_json = resolve_absolute_path_to('data/example.json')
    object = json_to_obj(path_to_json)

    assert_equal(200, object.response.status.code)
    assert_equal('OK', object.response.status.message)
    assert_equal('domain', object.response.body.type)
  end
end
