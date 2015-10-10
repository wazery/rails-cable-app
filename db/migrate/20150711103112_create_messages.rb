class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :room, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.text :body

      t.timestamps
    end
  end
end
