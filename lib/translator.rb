# require modules here
require "yaml"

def load_library(path="./lib/emoticons.yml")
  emot = YAML.load_file(path)
  puts emot
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library