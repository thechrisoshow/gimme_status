require 'rubygems'
require 'sinatra'

get "/:new_status" do
  [params[:new_status].to_i, "Gimme status #{params[:new_status]}"]
end
