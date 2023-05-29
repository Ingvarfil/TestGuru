class CreateRails < ActiveRecord::Migration[6.1]
  def change
    create_table :rails do |t|
      t.string :g
      t.string :model
      t.string :answer
      t.text :body
      t.boolean :correct
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
