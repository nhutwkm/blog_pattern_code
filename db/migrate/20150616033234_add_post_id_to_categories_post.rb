class AddPostIdToCategoriesPost < ActiveRecord::Migration
  def change
    add_column :categories_posts, :post_id, :integer
  end
end
