Rails.application.routes.draw do

  get("/roll/:dice/:sides", { :controller => "dice", :action => "roll" })
    @num_dice = params.fetch("dice").to_i
    @roll_dice = params.fetch("roll").to_i

    @rolls [] 

    @num_dice.times do 
      die = rand(1..6) 

      @rolls.push(die)
    end 

    erb( :flexible)

end 
