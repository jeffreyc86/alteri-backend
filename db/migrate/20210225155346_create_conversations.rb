class CreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :conversations do |t|
      t.integer :request_id
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
