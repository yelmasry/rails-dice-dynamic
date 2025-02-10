class DiceController < ApplicationController
  def roll
    num_dice = params[:num_dice].to_i
    num_sides = params[:num_sides].to_i
    @results = Array.new(num_dice) { rand(1..num_sides) }
    render({ :template => "dice_templates/home"})
  end
end
