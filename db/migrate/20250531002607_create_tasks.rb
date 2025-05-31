class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.references :guide, null: false, foreign_key: true
      t.references :seeker, null: false, foreign_key: true
      t.text :description
      t.string :frequency
      t.boolean :completed

      t.timestamps
    end
  end
end
