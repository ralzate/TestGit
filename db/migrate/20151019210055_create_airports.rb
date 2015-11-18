class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :name
      t.references :city, index: true, foreign_key: true
      t.string :department

      t.timestamps null: false
    end
  end
end
