class Resource < ActiveRecord::Base
  belongs_to :giver, class_name: "Teacher"
  belongs_to :receiver, class_name: "Teacher"
  belongs_to :category

end
