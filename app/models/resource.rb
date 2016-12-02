class Resource < ActiveRecord::Base
  belongs_to :giver, class_name: "Teacher"
  belongs_to :receiver, class_name: "Teacher"
  belongs_to :category

  def add_info
    self.giver_id = @current_user.id
    self.category_id = @category.id
  end
end
