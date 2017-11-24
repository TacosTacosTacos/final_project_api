class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.references :user, foreign_key: true
      t.references :make, foreign_key: true
      t.string :model
      t.integer :year
      t.string :label

      t.timestamps
    end
  end
end
