class CreateMatches < ActiveRecord::Migration[7.1]
  def change
    create_table :matches do |t|
      t.boolean :viewing
      t.boolean :maintenance
      t.boolean :payment
      t.boolean :offer
      t.references :renter, null: false, foreign_key: true
      t.references :flat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
