require 'open-uri'
require 'set'

class GamesController < ApplicationController
  def new
    alphabet = Array('a'..'z')
    @letters = alphabet.sample(10)
  end

  def score
    @letters = params[:letters]
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    s1 = @letters.to_set
    s2 = @word.to_set
    if (s1 & s2) != s1
      "#{@word} cannot be constructed from #{@letters}"
    # elsif
    end
  end
end
