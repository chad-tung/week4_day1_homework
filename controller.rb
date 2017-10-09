require 'sinatra'
require 'sinatra/contrib/all' if development?

require_relative './models/rock_paper_scissors.rb'

game = Game.new()

get '/play/:op1/:op2' do
    op1 = params[:op1].to_s
    op2 = params[:op2].to_s
    @play_game = game.play(op1, op2)
    erb( :result )
end

get '/welcome' do
    erb( :welcome )
end

get '/play' do
    erb( :result )
end
