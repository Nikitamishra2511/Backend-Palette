class CreateGuides < ActiveRecord::Migration[8.0]
  def change
    create_table :guides do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
