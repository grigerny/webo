class Category < ActiveRecord::Base
  has_many :links, :dependent => :destroy
  belongs_to :user
  
  attr_accessible :name
  validates :name, :presence => true
     
end
