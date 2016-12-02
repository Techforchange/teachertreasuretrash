get '/categories' do
  @teacher = current_teacher
  @categories = Category.all
  erb :'/categories/index'
end

get '/categories/:id' do
  #displays one specific category
end
