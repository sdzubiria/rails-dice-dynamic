class DiceController < ApplicationController
  def homepage
    render "homepage"
  end

  def roll
    num_dice = params[:number_of_dice].to_i
    sides = params[:how_many_sides].to_i

    @rolls = num_dice.times.map { rand(1..sides) }
    @dice_type = "#{num_dice}d#{sides}"
    render "flexible"
  end
end
