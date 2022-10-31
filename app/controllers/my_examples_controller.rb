class MyExamplesController < ApplicationController
  def random_fortune
    fortunes = ["Some days you are pigeon, some days you are statue. Today, bring umbrella.", "Your reality check about to bounce.", "Two days from now, tomorrow will be yesterday."]
    render json: { message: "Your fortune is: #{fortunes.sample}!" }
  end

  def random_numbers
    num_array = []
    6.times do
      num_array << rand(1..60)
    end
    render json: { message: num_array }
  end

  def bottles_of_beer
    lyrics = []
    number = 99
    97.times do
      message = "#{number} bottles of beer on the wall, #{number} bottles of beer. Take one down and pass it around, #{number - 1} bottles of beer on the wall."
      lyrics << message
      number -= 1
    end
    message = "2 bottles of beer on the wall, 2 bottles of beer. Take one down and pass it around, 1 bottle of beer on the wall. 1 bottle of beer on the wall, 1 bottle of beer. Take one down and pass it around, no more bottles of beer on the wall. No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
    lyrics << message
    render json: { message: lyrics }
  end
end
