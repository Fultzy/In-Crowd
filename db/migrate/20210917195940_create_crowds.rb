class CreateCrowds < ActiveRecord::Migration[6.1]
  def change
    create_table :crowds do |t|
      t.string :crowd_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :crowds, :creator
  end
end
