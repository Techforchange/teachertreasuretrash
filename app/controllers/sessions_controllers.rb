get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  p params
  "hello"
  @teacher = Teacher.find_by(email: params[:email])
  if @teacher && @teacher.authenticate?(params[:email], params[:password])
    p "succeeded"
    login(@teacher)
    redirect '/'
  else
    p "failed"
    # @errors = "Try again!"
    erb :'sessions/new'
  end
end

delete '/sessions' do
  logout
  redirect '/'
end
