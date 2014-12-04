class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :ing
      t.string :country_name
      t.string :dispense
      t.boolean :rx
      t.boolean :generic
      t.float :price
      t.string :buy

      t.timestamps
    end
  end
end
