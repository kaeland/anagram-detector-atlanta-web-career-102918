require 'pry'

class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(words_array)
    anagrams = words_array.find_all do |word|
      word.split("").sort == self.word.split("").sort 
    end
  end
end