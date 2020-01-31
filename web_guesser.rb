require 'sinatra'




number = rand(101)
get '/' do
    guess = params["guess"].to_i
    message = check_guess(number)
    background = check_guess(background)
    erb :index, :locals => {:number => number, :message => message, :background => background }    

end


def check_guess(guess, background)
    if params["guess"].to_i == guess
        "You got it right! The secret number is #{guess}"
        background = "background-color:#A1D490"     
    elsif params["guess"].to_i > guess
        if params["guess"].to_i > (guess + 5)
            "Way to high!"
            background = "background-color:#F0501A"
        else
            "Close, but too high!"
            background = "background-color:#D4A190"
        end
    elsif params["guess"].to_i < guess
        if params["guess"].to_i <(guess - 5)
            "Way to low!"
            background = "background-color:#F0501A"
        else
            "Close, but too low!"
            background = "background-color:#D4A190"
        end
        
    end
end