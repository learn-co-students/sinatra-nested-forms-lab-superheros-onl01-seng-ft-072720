require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :new
    end

    post '/team' do
        # binding.pry
        @team = Team.new(params[:team])
        @members=[]
        params[:team][:members].each do |member|
            # binding.pry
            @members << Member.new(member)
        end
        erb :team
    end

end
