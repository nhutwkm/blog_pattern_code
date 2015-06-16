class CreateCammands < ActiveRecord::Migration
  def change
    create_table :cammands do |t|
      t.string :title
      t.string :description
      t.string :id_user

      t.timestamps null: false
    end
  end
end
