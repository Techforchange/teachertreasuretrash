get '/categories/:category_id/resources' do
  @category = Category.find(params[:category_id])
  @resources = @category.resources
   redirect :"/categories/#{category.id}"
end

get '/categories/:category_id/resources/new' do
  @category = Category.find(params[:category_id])
  erb :'/resources/new'
end

post '/categories/:category_id/resources' do
  @category = Category.find(params[:category_id])

  #adds new resource
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
