class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name, null: false
      t.string :code, null: false
      t.string :user_ids, default: [], array: true
      t.timestamps
    end
  end
end
