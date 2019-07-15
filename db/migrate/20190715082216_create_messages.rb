class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :room, index: true
      t.references :user, index: true
      t.timestamps
    end
  end
end
