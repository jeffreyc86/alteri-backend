class CreateRequestItems < ActiveRecord::Migration[6.0]
  def change
    create_table :request_items do |t|
      t.integer :request_id
      t.integer :item_id
      t.integer :quantity, default: 1
      t.string :preference

      t.timestamps
    end
  end
end
