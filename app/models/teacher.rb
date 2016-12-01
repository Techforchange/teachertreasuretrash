class Teacher < ActiveRecord::Base
  has_many :resources, foreign_key: :giver_id
  has_many :resources, foreign_key: :receiver_id

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :password
  validates_presence_of :email
  validates_uniqueness_of :email

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate?(email, txt_password)
    self.email == email && self.password == txt_password
  end

end
