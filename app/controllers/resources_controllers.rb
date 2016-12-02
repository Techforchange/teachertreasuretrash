get 'categories/:category_id/resources' do
  @category = Category.find(params[:category_id])
  @resources = @category.resources
   redirect :"/categories/#{category.id}"
end

get '/resources/:id' do
  #one specific resource
end

post '/resources' do
  #adds new resource
end

get '/resources/:id/edit' do
  #edits a resource
end

delete '/resources/:id' do
  #delete resource
end
