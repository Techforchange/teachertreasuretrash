get '/resources' do
  #show all resources
  erb :'/'
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
