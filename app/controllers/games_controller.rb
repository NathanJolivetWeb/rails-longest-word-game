class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.shuffle[0,10]
  end

  def score
    @response = params[:score].upcase.chars
    @random_letters = params[:letters].split
    @response.each do |letter|
      if @response.count(letter) <= @random_letters.count(letter)
        @display = 'This word is valid'
      else
        @display = 'This word is invalid'
      end
    end
  end
end
