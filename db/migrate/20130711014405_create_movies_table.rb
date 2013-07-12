class CreateMoviesTable < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :rating, default: 50
      t.string :mpaa_rating
      t.text :plot
      t.integer :year
      t.string :poster
      t.timestamps
    end
  end
end
