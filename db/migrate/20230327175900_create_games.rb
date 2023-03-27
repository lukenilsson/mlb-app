class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :home_team
      t.string :away_team
      t.string :venue
      t.string :date

      t.timestamps
    end
  end
end
