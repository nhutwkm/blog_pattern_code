class Category < ActiveRecord::Base
	has_many :categories_posts

  validates :name, :presence => true
  validates :name, :length => { :in => 5..200, :message => " is invalid" }
  #  validates :name, :email, :presence => true
  # validates :email, :uniqueness => { :case_sensitive => false }
  # validates :email, :format => { :with => /@/, :message => " is invalid" }

 	
	has_many :posts, through: :categories_posts
	def self.category_list(page)
		# Category.all	
	    # Category.all.paginate(id: page, per_page: 1)
	    Category.paginate(:page =>page, :per_page => 2)#.order('name asc')
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