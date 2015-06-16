class AddCategoryIdToCategoriesPost < ActiveRecord::Migration
  def change
    add_column :categories_posts, :category_id, :int
  end
end
