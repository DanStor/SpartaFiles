require "sinatra"
require "sinatra/contrib"
# If the page is in development, it will be updated with each change
require "sinatra/reloader" if development?

# Get the information for this website
get "/" do
  "<h1>Hello, world!</h1>
  <h2>This is my first site</h2>
  <p>Isn't it great?</p>"
end

get "/cups" do
  "<h1>Pinda and Arun like stealing cups</h1>"
end
