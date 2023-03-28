class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.date :game_date
      t.string :home_team
      t.string :home_score
      t.string :away_score
      t.string :away_team
      t.string :game_venue
      t.datetime :game_time

      t.timestamps
    end
  end
end
