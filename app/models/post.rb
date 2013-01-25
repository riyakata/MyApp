class Post < ActiveRecord::Base
  attr_accessible :userId, :title, :body

  validates :title, :presence => true , :length => {:maximum => 5 }

  belongs_to :user

end