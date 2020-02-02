require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
      erb :super_hero
    end
    
    post '/team' do
      
      @team = params[:team][:name]
      @motto = params[:team][:motto]
      @members = params[:team][:members]
      
      erb :super_hero
    end

end
