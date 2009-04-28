require 'rubygems'
require 'sinatra'

get "/:new_status" do
   return_status 
end

post "/:new_status" do 
  return_status
end

def return_status
  [params[:new_status].to_i, "Gimme status #{params[:new_status]}"]  
end