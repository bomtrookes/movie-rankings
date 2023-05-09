class CreateCharts < ActiveRecord::Migration[7.0]
  def change
    create_table :charts do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :ranking, null: false, foreign_key: true
      t.float :rating
      t.text :review

      t.timestamps
    end
  end
end
