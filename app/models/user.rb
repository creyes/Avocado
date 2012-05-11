class User < ActiveRecord::Base
  attr_accessible :parent_id, :name
  has_ancestry  
  validates_with UserValidator  
end
