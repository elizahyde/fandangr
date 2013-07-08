class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def index
    @movies = Movie.all
  end

  def create
    @movie = Movie.new(params[:movie])
    if @movie.save
      redirect_to movie_path
    else
      render :new
    end

  end


  def show

    @movie = Movie.find(params[:id])

  end
end
