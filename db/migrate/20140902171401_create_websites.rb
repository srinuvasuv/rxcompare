class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :name
      t.string :url
      t.string :pno
      t.string :faxno
      t.string :email
      t.boolean :cipa
      t.boolean :pckr
      t.boolean :vipps
      t.string :pcname
      t.string :pctitle
      t.string :pcemail
      t.string :pcphone
      t.boolean :active
      t.integer :fees
      t.string :feetype

      t.timestamps
    end
  end
end
