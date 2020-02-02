require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
      erb :'super_hero'
    end
    
    post '/team' do
      @team = Team.new(params[:team])

      hero = params[:team][:member]
      
      hero.each do |info|
        Hero.new({name: })
      end
      @heroes = Hero.all
      
      erb :team
    end

end
