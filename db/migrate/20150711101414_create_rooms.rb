class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.references :user, index: true, foreign_key: true

      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
