class Link < ActiveRecord::Base
  belongs_to :category
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
  
  attr_accessible :name, :category_id, :user_id
end
