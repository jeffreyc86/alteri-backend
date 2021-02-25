class CreateMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :memberships do |t|
      t.integer :conversation_id
      t.integer :user_id
      t.datetime :last_read, default: -> { "now()" }

      t.timestamps
    end
  end
end
