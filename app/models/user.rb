
class User < ActiveRecord::Base
  attr_accessible :age, :name
  has_many :posts
end
