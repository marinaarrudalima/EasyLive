class CreateFlats < ActiveRecord::Migration[7.1]
  def change
    create_table :flats do |t|
      t.string :city
      t.text :description
      t.string :status
      t.decimal :rent
      t.string :address

      t.timestamps
    end
  end
end
