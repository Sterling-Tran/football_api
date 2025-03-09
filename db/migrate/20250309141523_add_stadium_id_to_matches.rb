class AddStadiumIdToMatch < ActiveRecord::Migration[8.0]
  def change
    add_column :match, :stadium_id, :string
  end
end
