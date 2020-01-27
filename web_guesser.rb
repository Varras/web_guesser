require 'sinatra'
require 'sinatra/reloader'

def check_guess(guess)
    if params["guess"].to_i == guess
        "You got it right!"        
    elsif params["guess"].to_i > guess
        if params["guess"].to_i > (guess + 5)
            "Way to high!"
        else
            "Close, but too high!"
        end
    elsif params["guess"].to_i < guess
        if params["guess"].to_i <(guess - 5)
            "Way to low!"
        else
            "Close, but too low!"
        end
        
    end
end


number = rand(101)
get '/' do
    guess = params["guess"].to_i
    message = check_guess(number)
    erb :index, :locals => {:number => number, :message => message }    

end