# frozen_string_literal: true

require 'json'

def json_to_obj(absolute_path_to_json)
  json = File.read(absolute_path_to_json)
  JSON.parse(json, object_class: OpenStruct)
end

def json_to_dict(absolute_path_to_json)
  json = File.read(absolute_path_to_json)
  JSON.parse(json)
end
