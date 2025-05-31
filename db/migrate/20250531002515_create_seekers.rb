class CreateSeekers < ActiveRecord::Migration[8.0]
  def change
    create_table :seekers do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.references :pal, null: false, foreign_key: true
      t.boolean :is_anonymous
      t.integer :streak
      t.datetime :last_login_at

      t.timestamps
    end
  end
end
