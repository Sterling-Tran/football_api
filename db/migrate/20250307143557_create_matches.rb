class CreateMatches < ActiveRecord::Migration[8.0]
  def change
    create_table :matches do |t|
      t.string :team1
      t.string :team2
      t.integer :score1
      t.integer :score2

      t.timestamps
    end
  end
end
