class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.text :title
      t.text :author
      t.integer :price
      t.text :publisher
      t.text :comment
      t.integer :user_id, foreign_key: true
      t.timestamps
    end
  end
end
