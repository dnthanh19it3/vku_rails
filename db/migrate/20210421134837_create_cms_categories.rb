class CreateCmsCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :cms_categories do |t|
      t.integer :ParentID, :null => true
      t.string :Name_vi
      t.string :Name_en, :null => true
      t.string :Slug_vi
      t.string :Slug_en, :null => true
      t.integer :Index, :null => true

      t.timestamps
    end
  end
end
