get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  @teacher = Teacher.find_by(email: params[:email])
  if @teacher && @teacher.authenticate?(params[:email], params[:password])
    login(@teacher)
    redirect :'/categories'
  else
    # @errors = "Try again!"
    erb :'sessions/new'
  end
end

delete '/sessions' do
  logout
  redirect '/'
end
