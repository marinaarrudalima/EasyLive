class CreateRenters < ActiveRecord::Migration[7.1]
  def change
    create_table :renters do |t|
      t.string :name
      t.string :contact_info
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
