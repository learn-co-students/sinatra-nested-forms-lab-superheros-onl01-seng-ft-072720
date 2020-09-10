require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/team' do
        @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
       @heros = params[:team][:members].map do |hero_data|
            # binding.pry
             hero = Hero.new(hero_data)
            # binding.pry
       end

    erb :team
    end

end
