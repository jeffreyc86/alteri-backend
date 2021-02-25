class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.integer :recipient_id
      t.integer :donor_id
      t.boolean :accepted, default: false
      t.boolean :fulfilled, default: false
      t.boolean :deleted, default: false

      t.timestamps
    end
  end
end
