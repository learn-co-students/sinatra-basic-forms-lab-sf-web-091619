require_relative 'config/environment'
class App < Sinatra::Base 
    get('/') { erb :index }
    get('/new') { erb :create_puppy }
    post('/puppy') {
        @newpuppy = Puppy.new(params[:name], params[:breed], params[:months_old])
        erb :display_puppy
    }
end