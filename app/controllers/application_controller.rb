require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
      erb :super_hero
    end
    
    post '/team' do
      
      @team = Team.new(params[:team])
      @team_members.each do |param|
        Hero.new(param)
      end
        
      @Heroes = Hero.all
      
      erb :team
    end

end
