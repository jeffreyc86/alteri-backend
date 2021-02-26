class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :image_url
      t.boolean :multiple

      t.timestamps
    end
  end
end
