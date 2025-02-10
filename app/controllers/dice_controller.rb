class DiceController < ApplicationController
  def roll
    @num_dice = params.fetch("dice").to_i
    @roll_dice = params.fetch("sides").to_i

    @rolls = [] 

    @num_dice.times do 
      die = rand(1..6) 

      @rolls.push(die)
    end 
    
    render({ :template => "dice_templates/home"})
  end
end
