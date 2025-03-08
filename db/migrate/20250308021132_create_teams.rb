class CreateTeams < ActiveRecord::Migration[8.0]
  def change
    create_table :teams do |t|
      t.string :full_name
      t.string :short_name
      t.integer :founded
      t.string :head_coach
      t.string :president

      t.timestamps
    end
  end
end
