class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.belongs_to :movie
      t.string :image
      t.string :name
      t.integer :age
      t.integer :weight
      t.text :history

      t.timestamps
    end
  end
end
