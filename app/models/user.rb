class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
      has_many :posts
      has_many :comments
      belongs_to :role

      def self.user_list(page)
      	User.paginate(:page => page, :per_page => 5)
      end
end
