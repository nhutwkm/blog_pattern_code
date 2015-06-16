class CreateCommands < ActiveRecord::Migration
  def change
    create_table :commands do |t|
      t.int :user_id
      t.int :post_id
      t.text :comment
    end
  end
end
