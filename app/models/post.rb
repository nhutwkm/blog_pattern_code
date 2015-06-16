class Post < ActiveRecord::Base
	has_many :comments
	has_many :categoriesposts
	has_many :categories, through categoriesposts
	belongs_to :user 

end
