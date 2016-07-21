require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(params[:player_1_name], params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  get '/attack' do
    @game = Game.instance
    @game.attack
    if @game.loser
      redirect '/loser'
    end
    @game.switch_turn
    erb :attack
  end

  get '/loser' do
    @game = Game.instance
    erb :loser
  end

  run! if app_file == $0
end
