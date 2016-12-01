
get '/teachers/new' do
  erb :'/teachers/new'
end

post '/teachers' do
  @teacher = Teacher.new(params[:teacher])
  if @teacher.save
    session[:id] = @teacher.id
    redirect "/"
  else
    # @errors = @teacher.errors.full_messages
    erb :'teachers/new'
  end
end

get '/teachers/:id' do
  @teacher = Teacher.find(params[:id])
  erb :'teachers/show'
end

# USERS EDIT
# get '/users/:id/edit' do
#   @user = User.find(params[:id])
#   erb :'users/edit'
# end
#
#
# # USERS UPDATE
# put '/users/:id' do
#   @user = User.find(params[:id])
#   @user.update(params[:user])
#   redirect "/users/#{@user.id}"
# end
#
#
# # USERS DESTROY
# delete '/users/:id' do
#   @user = User.find(params[:id])
#   @user.destroy
#   redirect "/users"
# end
