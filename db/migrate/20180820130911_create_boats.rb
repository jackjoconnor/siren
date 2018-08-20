class CreateBoats < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|
      t.string :title
      t.text :description
      t.string :photo
      t.integer :price
      t.integer :capacity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
