class CreateCms < ActiveRecord::Migration[6.1]
  def change
    create_table :cms do |t|
      t.references :categories, null: false, foreign_key: true
      t.string :MetaTitle
      t.string :MetaDescription
      t.string :MetaKeyword
      t.string :Slug
      t.string :Title
      t.string :Avatar
      t.string :SimpleContent
      t.string :Content
      t.integer :Banner
      t.integer :Status
      t.integer :Pin

      t.timestamps
    end
  end
end
