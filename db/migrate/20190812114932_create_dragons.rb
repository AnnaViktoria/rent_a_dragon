class CreateDragons < ActiveRecord::Migration[5.2]
  def change
    create_table :dragons do |t|
      t.string :name
      t.integer :age
      t.string :country_of_origin
      t.string :location

      t.timestamps
    end
  end
end
