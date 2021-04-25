class CreateHoSos < ActiveRecord::Migration[6.1]
  def change
    create_table :ho_sos do |t|
      t.string :ten

      t.timestamps
    end
  end
end
