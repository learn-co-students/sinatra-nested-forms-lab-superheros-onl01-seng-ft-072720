require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


get '/' do
    
    erb :index
end

post '/teams' do
    @team = Team.new(params[:team])

    params[:team][:members].each do |i|
        Member.new(i)
    end

@members = Member.all

    


    erb :team
end


end
