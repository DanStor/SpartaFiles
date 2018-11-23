class AnimalsController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  helpers Sinatra::Cookies

  enable :sessions

  # Index
  get "/" do
    if cookies[:visited]
      @show_message = "Welcome Back!"
    end

    response.set_cookie(:visited, :value => 1, :expires => Time.new + (60*60*2))

    @animals = Animal.all
    erb :"animals/index"
  end

  # New
  get "/new" do
    @animal = Animal.new
    erb :"animals/new"
  end

  # Show
  get "/:id" do
    id = params[:id].to_i

    if !session[:animals]
      session[:animals] = []
    end

    if !session[:animals].include? id
      session[:animals].push id
    end

    puts session[:animals]

    @animal = Animal.find id
    erb :"animals/show"
  end

  # Edit
  get "/:id/edit" do
    id = params[:id].to_i
    @animal = Animal.find id
    erb :"animals/edit"
  end

  # Create
  post "/" do
    # Create instance of animal class
    animal = Animal.new

    # Set attribute of animal instance
    animal.name = params[:name].capitalize
    animal.fact = params[:fact]

    # Store info to database
    animal.save

    redirect "/"
  end

  # Update
  put "/:id" do
    id = params[:id].to_i
    animal = Animal.find id

    animal.name = params[:name].capitalize
    animal.fact = params[:fact]

    animal.save

    redirect "/"
  end

  # Destroy
  delete "/:id" do
    id = params[:id].to_i

    Animal.destroy id

    redirect "/"
  end
end
