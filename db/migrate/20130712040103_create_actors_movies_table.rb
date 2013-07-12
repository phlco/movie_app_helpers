class CreateActorsMoviesTable < ActiveRecord::Migration
  def up
    create_table :actors_movies, id: false do |t|
      t.integer :actor_id
      t.integer :movie_id
    end
  end

  def down
    drop_table :actors_movies
  end
end
