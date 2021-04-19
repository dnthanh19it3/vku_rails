class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.integer :ParentID
      t.string :Name
      t.string :Slug

      t.timestamps
    end
  end
end
