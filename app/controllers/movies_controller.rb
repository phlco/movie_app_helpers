class MoviesController < ApplicationController
  def index
    @movies = Movie.order('rating desc')
  end

  def search
    @movies = Imdb::Search.new(params[:title]).movies
    render :index
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def result
    @movie = Imdb::Movie.new(params[:id])
    render :show
  end

  def save
    imdb = Imdb::Movie.new(params[:id])
    @movie = Movie.new(:title => imdb.title, :mpaa_rating => imdb.mpaa_rating, :plot => imdb.plot, :year => imdb.year, :poster => imdb.poster)
    @movie.rating = 100 if params[:fave]
    @movie.save
    imdb.cast_members.each do |name|
      actor = Actor.create_or_find_by(:name => name)
      @movie.actors << actor
    end
    redirect_to '/movies'
  end

  def rate
    movie = Movie.find(params[:id])
    case params[:pref]
    when 'up'
      movie.rating += 1
    when 'down'
      movie.rating -= 1
    else
      movie.rating = 100
    end
    movie.save
    redirect_to movie
  end

end
