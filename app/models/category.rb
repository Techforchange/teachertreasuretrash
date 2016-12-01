class Category < ActiveRecord::Base
  has_many :resources
  # Remember to create a migration!
end
