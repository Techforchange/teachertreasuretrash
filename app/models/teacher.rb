class Teacher < ActiveRecord::Base
  has_many :resources, foreign_key: :giver_id
  has_many :resources, foreign_key: :receiver_id
  # Remember to create a migration!
end
