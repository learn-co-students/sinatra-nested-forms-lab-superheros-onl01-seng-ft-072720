require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    get '/' do
        erb :super_hero
    end
    post '/teams' do
        @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
        members = params[:team][:members]

        members.each do |mem_params|
            Superhero.new({name: mem_params[:name], power: mem_params[:power], bio: mem_params[:bio]})
        end
        @superheroes = Superhero.all

        erb :team
    end

end
