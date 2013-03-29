get '/' do
  # Look in app/views/index.erb
  erb :index
end

# USER ROUTES

post '/users/signup' do
	@user = User.new(:name => params[:name],
									 :email => params[:email],
									 :password => params[:password])
	@user.password
	if @user.save
		login(@user)
		redirect '/search'
	else
		erb :index
	end
end

post '/users/login' do
	@user = User.find_by_email(params[:email])
	if @user.password == params[:password]
		login(@user)
		erb :search
	else
		erb :index
	end
end

get '/user/logout' do
	session.clear
	redirect '/'
end

get '/search' do
	erb :search
end

# SEARCH ROUTES

get '/search/lawyer' do
	erb :search_lawyer
end

get '/search/judge' do
	erb :search_judge
end

get '/search/case_number' do
	erb :search_case_number
end

get '/search/defendant' do
	erb :search_defendant
end