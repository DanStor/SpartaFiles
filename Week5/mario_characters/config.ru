require "sinatra"
require "sinatra/reloader"
require "sinatra/contrib"
require "pg"

require_relative "./controllers/main_controller.rb"
require_relative "./models/character.rb"

# forms are stupid and don't work
# Allows _method override in order to update or delete posts
use Rack::MethodOverride

# The gateway to for the code to run the website
# Basically just a 'start here'
run MainController
