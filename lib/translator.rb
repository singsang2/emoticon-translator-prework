# require modules here
require "yaml"

def load_library(path="./lib/emoticons.yml")
  emot = YAML.load_file(path)
  new_hash = {'get_meaning'=>{}, 'get_emoticon'=>{}}
  emot.each do |meaning, val|
    new_hash['get_meaning'][val.last] = meaning
    new_hash['get_emoticon'][val.first] = val.last
  end
  new_hash
end

def get_japanese_emoticon(path, emot)
  dictionary = load_library(path)
  if dictionary['get_emoticon'].keys.include?(emot)
    diciontary['get_emoticon'][emot]
  else
    ""
end

def get_english_meaning
  # code goes here
end

load_library