class CreateDailyReflections < ActiveRecord::Migration[8.0]
  def change
    create_table :daily_reflections do |t|
      t.references :seeker, null: false, foreign_key: true
      t.references :pal, null: false, foreign_key: true
      t.text :user_note
      t.integer :mood_score
      t.text :ai_reflection

      t.timestamps
    end
  end
end
