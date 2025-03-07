class CreateReferees < ActiveRecord::Migration[8.0]
  def change
    create_table :referees do |t|
      t.string :name
      t.integer :age
      t.string :experience

      t.timestamps
    end
  end
end
