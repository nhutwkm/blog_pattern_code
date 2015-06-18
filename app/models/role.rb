class Role < ActiveRecord::Base
	has_many :users

	def self.edit(id)
		Role.find_by_id(id)
	end

	def self.edit_find(role_name)
		Role.find_by_name(role_name)
	end
end
