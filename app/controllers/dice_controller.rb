class DiceController < ApplicationController
  def roll
    @num_dice = params.fetch("number_of_dice").to_i
    @num_sides = params.fetch("number_of_sides").to_i

    @dice = [] 

    @num_dice.times do 
      die = rand(1..@num_sides) 

      @dice.push(die)
    end 
    
    render({ :template => "dice_templates/flexible"})
  end

  def home 
    render({ :template => "dice_templates/home"})
  end 

end
