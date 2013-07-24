get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/login' do

  erb :login
end

get '/profile/:user_id' do

  erb :profile
end

get '/post/:post_id' do

  erb :post
end

post '/login' do

  redirect "/profile/#{user.id}"
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



