get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  @teacher = Teacher.find_by_email(params[:email])
  if @teacher && @teacher.password == params[:password]
    login(@teacher)
    redirect '/'
  else
    @errors = "Try again!"
    erb :'sessions/new'
  end
end

delete '/sessions' do
  logout
  redirect '/'
end
