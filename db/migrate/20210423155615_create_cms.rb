class CreateCms < ActiveRecord::Migration[6.1]
  def change
    create_table :cms do |t|
      t.references :cms_category
      t.string :MetaTitle
      t.string :MetaDescription
      t.string :MetaKeyword
      t.string :Slug_vi
      t.string :Slug_en
      t.string :Title_vi
      t.string :Title_en
      t.string :Avatar
      t.text :SimpleContent_vi
      t.text :SimpleContent_en
      t.mediumtext :Content_vi
      t.mediumtext :Content_en
      t.integer :Status
      t.integer :Pin
      t.integer :Banner
      t.string :Place
      t.integer :ViewCount
      t.integer :Author
      t.timestamps :null => true
      t.string :Tags
    end
  end
end
