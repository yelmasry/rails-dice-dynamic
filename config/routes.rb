Rails.application.routes.draw do

  get("/roll/:dice/:sides", { :controller => "dice", :action => "roll" })

end 
