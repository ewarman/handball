class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.date :date
      t.time :time
      t.integer :player
      t.integer :opponent
      t.integer :player_score
      t.integer :opponent_score

      t.timestamps
    end
  end
end
