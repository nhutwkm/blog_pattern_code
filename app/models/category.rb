class Category < ActiveRecord::Base
	has_many :categories_posts
	# has_many :posts, through :categories_posts
	def self.category_list(page)
		# Category.all	
	    # Category.all.paginate(id: page, per_page: 1)
	    Category.paginate(:page =>page, :per_page => 1).order('name asc')
		 # Category.id(page).per(10)
	end
	def self.chitiet(id)
		 Category.find_by_id(id)
	end
	def self.update(id,name)
		Category.find_by_id(id).update(:name=>name)
		
	end
	def self.create(name) 
		# binding.pry
		object=Category.new(:name=>name)
		object.save
	end
	def delete(id)
		Category.where(id: id).destroy
		
	end
end
