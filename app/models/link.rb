class Link < ActiveRecord::Base
  belongs_to :category
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
  acts_as_voteable
  
  attr_accessible :name, :category_id, :user_id
  validates_exclusion_of :name, :in => ["http://"]
  validates_format_of :name, :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix
  
end
