class CreateMakes < ActiveRecord::Migration[5.1]
  def change
    create_table :makes do |t|
      t.integer :nhtsa_make_id
      t.string :make_name

      t.timestamps
    end
  end
end
