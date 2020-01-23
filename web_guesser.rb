require 'sinatra'
#require 'sinatra/reloader'

get '/' do
   number = rand(101)
    "The SECRET NUMBER is #{number}"
end