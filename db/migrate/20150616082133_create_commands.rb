class CreateCommands < ActiveRecord::Migration
  def change
    create_table :commands do |t|
      t.integer :user_id
      t.integer :post_id
      t.text :comment
    end
  end
end
