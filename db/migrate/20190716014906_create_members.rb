class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :nickname
      t.references :user, index: true
      t.references :room, index: true
      t.timestamps
    end
  end
end
