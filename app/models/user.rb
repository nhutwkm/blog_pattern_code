class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :comments
  belongs_to :role

  def self.current
    Thread.current[:user]
  end

  def self.current=(user)
    Thread.current[:user] = user
  end

  def self.user_list(page)
    User.paginate(:page => page, :per_page => 5)
  end

  def self.edit(id)
    User.find_by_id(id)   
  end

  def self.xu_ly_edit(id,name,email,role_id)
    if User.find_by_id(id)
      User.find_by_id(id).update(id: id,name: name, email: email,role_id: role_id)
    end
  end
end