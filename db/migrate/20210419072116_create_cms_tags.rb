class CreateCmsTags < ActiveRecord::Migration[6.1]
  def change
    create_table :cms_tags do |t|
      t.references :tags, null: false, foreign_key: true

      t.timestamps
    end
  end
end
