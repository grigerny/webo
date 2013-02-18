class Category < ActiveRecord::Base
  has_many :links
  attr_accessible :name
  validates_uniqueness_of :name
end
