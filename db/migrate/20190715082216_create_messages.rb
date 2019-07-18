class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages, id: false do |t|
      t.string :guid, primary_key: true
      t.text :content, default: ''
      t.references :room, index: true
      t.references :member, index: true
      t.timestamps
    end
  end
end
