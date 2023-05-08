class CreateRankings < ActiveRecord::Migration[7.0]
  def change
    create_table :rankings do |t|
      t.integer :story
      t.integer :acting
      t.integer :dialog
      t.integer :cinematography
      t.integer :soundtrack
      t.integer :style
      t.integer :pacing
      t.integer :originality
      t.integer :characters
      t.integer :enjoyment
      t.references :movie, null: false, foreign_key: true
      t.timestamps
    end
  end
end
