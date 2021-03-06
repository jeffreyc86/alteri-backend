class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :photo_url
      t.float :lat
      t.float :lng
      t.boolean :deleted, default: false
      t.string :google_id

      t.timestamps
    end
  end
end
