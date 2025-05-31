class CreatePals < ActiveRecord::Migration[8.0]
  def change
    create_table :pals do |t|
      t.string :name
      t.text :description
      t.string :visual_theme
      t.text :system_prompt

      t.timestamps
    end
  end
end
