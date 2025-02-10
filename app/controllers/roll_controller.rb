class RollController < ApplicationController
  def roll
    num_dice = params[:num_dice].to_i
    num_sides = params[:num_sides].to_i
    @results = Array.new(num_dice) { rand(1..num_sides) }
    render({ :template => "roll_templates/home"})
  end
end
