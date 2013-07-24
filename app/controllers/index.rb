get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/login' do

  erb :login
end

get '/profile/:user_id' do
  @user_page = User.find_by_id(params[:user_id])
  @current_user = User.find_by_id(session[:user_id])
  @posts = @user_page.posts
  @comments = @user_page.comments
  if @user_page.id == session[:user_id]
    #side nav bar true
  end
  erb :profile
end

get '/post/:post_id' do

  erb :post
end

post '/login' do
  @current_user = User.authenticate(params[:user][:name], params[:user][:password])
  if @current_user
    session[:id] = @current_user.id
    redirect "/profile/#{@current_user.id}"
  else
    #@errors
    redirect '/login'
  end
end

post '/register' do
  user = User.new(params[:user])
  if user.valid?
    user.save
    session[:user_id] = user.id
  redirect "/profile/#{user.id}"
  else
    #@errors
    redirect "/login"
  end
end



