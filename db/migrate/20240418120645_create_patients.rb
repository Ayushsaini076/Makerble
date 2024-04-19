class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.string :disease

      t.timestamps
    end
  end
end
