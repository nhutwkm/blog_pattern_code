class CreateCommends < ActiveRecord::Migration
  def change
    create_table :commends do |t|
      t.interger :user_id
      t.interger :post_id
      t.string :commend

      t.timestamps null: false
    end
  end
end
