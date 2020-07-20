require './config/environment'
require 'sinatra/base'
require 'sinatra/json'

class ApplicationController < Sinatra::Base
    register Sinatra::CrossOrigin

    configure do
        enable :cross_origin
        
        set :allow_origin, "*" # allows your frontend to send fetch requests
        set :allow_methods, [:get, :post, :patch, :delete, :options] # allows these HTTP verbs
        set :allow_credentials, true
        set :max_age, 1728000
        set :expose_headers, ['Content-Type']
    end

    options '*' do
        response.headers["Allow"] = "HEAD,GET,POST,DELETE,OPTIONS"
        response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
        200
    end

end