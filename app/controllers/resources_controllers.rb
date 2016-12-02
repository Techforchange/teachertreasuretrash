get '/categories/:category_id/resources' do
  @category = Category.find(params[:category_id])
  @resources = @category.resources
   redirect :"/categories/#{@category.id}"
end

get '/categories/:category_id/resources/new' do
  @category = Category.find(params[:category_id])
  erb :'/resources/new'
end

post '/categories/:category_id/resources' do
  @category = Category.find(params[:category_id])
  @resource = Resource.new(params[:resource])
  @current_teacher = Teacher.find(session[:id])
  @resource.giver_id = @current_teacher.id
  @resource.category_id = @category.id
  # @resource.add_info
    if @resource.save
      redirect :"/categories/#{@category.id}/resources"
    else
      erb :"/categories/#{@category.id}/resources/new"
    end
end

get '/categories/:category_id/resources/:id' do
  @category = Category.find(params[:category_id])
  @resources = @category.resources
  #one specific resource
end

put '/categories/:category_id/resources/edit' do
  @category = Category.find(params[:category_id])
  @resources = @category.resources
  #edits a resource
end

delete '/categories/:category_id/resources/:id' do
  @category = Category.find(params[:category_id])
  @resources = @category.resources.find(params[:id])
  @resources.destroy
  #delete resource
  #set giver id to user who clicked(current user) on link
end
