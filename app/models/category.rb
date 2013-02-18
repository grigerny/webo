class Category < ActiveRecord::Base
  has_many :links
  belongs_to :user
  
  attr_accessible :name
  validates_uniqueness_of :name
end
