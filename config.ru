require './config/environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride # -> https://www.rubydoc.info/gems/rack/Rack/MethodOverride -> Used for unsupported HTTP requests, has to be at the top of the controllers
use Rack::JSONBodyParser # Source Code -> https://github.com/rack/rack-contrib/blob/master/lib/rack/contrib/json_body_parser.rb -> Parses incoming JSON for you so you don't have to do it in Ruby
use UsersController
run ApplicationController
