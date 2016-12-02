helpers do

  def current_teacher
    @current_teacher ||= Teacher.find(session[:id]) if session[:id]
  end

  def logged_in?
    current_teacher
  end

  def login(teacher)
    session[:id] = @teacher.id
  end

  def logout
    session[:id] = nil
  end
end
