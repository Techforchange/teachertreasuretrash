get '/' do
  @teacher = current_teacher
  erb :'index'
end
