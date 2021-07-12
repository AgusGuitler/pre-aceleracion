class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.belongs_to :genre
      t.string :image
      t.string :title
      t.string :date_of_creation
      t.integer :qualification
      
      t.timestamps
    end
  end
end
