class Category < ActiveRecord::Base
	has_many :categoriesposts
	has_many :posts, through :categoriesposts
end
