class PostsController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  $posts = [
    {
      id: 0,
      title: "Post 1",
      body: "My fist post is awesome!"
    },{
      id: 1,
      title: "Post 2",
      body: "My second post is ok."
    },{
      id: 2,
      title: "Post 3",
      body: "My third posts sucks..."
    }
  ]

  # Index
  get "/" do
    @title = "Blog Posts"
    @posts = $posts

    erb :"posts/index"
  end

  # New
  get "/new" do
    @post = {
      id: "",
      title: "",
      body: ""
    }

    erb :'posts/new'
  end

  # Create
  post "/" do
    new_post = {
      # When Create is called, these parameters are looked for and grabbed from the URL bar
      id: $posts.length,
      title: params[:title],
      body: params[:body]
    }
    # Add new_post to posts
    $posts.push(new_post)
    redirect "/#{new_post[:id]}"
  end

  # Show
  get "/:id" do
    # Gets value from URL and makes it the @post value
    id = params[:id].to_i
    @post = $posts[id]

    # Overrides everything above with erb file
    erb :"posts/show"
  end

  # Edit
  get "/:id/edit" do
    id = params[:id].to_i
    @post = $posts[id]

    erb :"posts/edit"
  end

  # Update
  put "/:id" do
    id = params[:id].to_i
    post = $posts[id]

    # update the title and body
    post[:title] = params[:title]
    post[:body] = params[:body]

    # store updated object in database
    $posts[id] = post

    redirect "/#{id}"
  end

  # Destroy
  delete "/:id" do
    id = params[:id].to_i
    $posts.delete_at(id)

    redirect "/"
  end

end
