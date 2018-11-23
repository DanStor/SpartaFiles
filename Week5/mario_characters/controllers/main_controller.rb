class MainController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Index
  get "/" do
    @heroes = Character.all
    erb :"erbs/index"
  end

  # New
  get "/new" do
    @hero = Character.new
    erb :"erbs/new"
  end

  # Show
  get "/:id" do
    id = params[:id].to_i
    @hero = Character.find id
    erb :"erbs/show"
  end

  # Edit
  get "/:id/edit" do
    id = params[:id].to_i
    @hero = Character.find id
    erb :"erbs/edit"
  end

  # Update
  put "/:id" do
    id = params[:id].to_i
    hero = Character.find id

    hero.name = params[:name]
    hero.fact = params[:fact]

    hero.save

    redirect "/"
  end

  # Create
  post "/" do
    # When Create is called, these parameters are looked for and grabbed from the URL bar
    char = Character.new

    if params[:name] == ""
      char.name = "No Name"
    else
      char.name = params[:name]
    end

    char.fact = params[:fact]

    # Add new_char to chars
    char.save

    redirect "/"
  end

  # Destroy
  delete "/:id" do
    id = params[:id]
    Character.destroy id
    redirect "/"
  end
end
