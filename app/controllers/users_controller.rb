class UsersController < ApplicationController

    # get('/users'){ json UserSerializer.new(User.all) } # This is a real syntax you can use here in Sinatra.

    # Originally you could write the method like this:

    # get '/users' do
        # json UserSerializer.new(User.all)
    # end

end