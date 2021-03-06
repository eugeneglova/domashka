class Post < ActiveRecord::Base
  attr_accessible :content, :title

  validates :title, :presence => true,
                    :length => { :minimum => 5 }

  validates :user_id, :presence => true                    

  has_many :comments, :dependent => :destroy
  belongs_to :user
end
