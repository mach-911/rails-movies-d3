class PeliculasController < ApplicationController
  def index
  	@peliculas = Pelicula.all
  end

  def new
  end


  def new
  	@pelicula = Pelicula.new
  end
 
  def create
  	@pelicula = Pelicula.new(pelicula_params)
  	if @pelicula.save
  		redirect_to action: "index"
  	else
  		render :new, status: :unprocessable_entity
  	end
  end

  private

  def pelicula_params
  	params.require(:pelicula).permit(:name, :sypnosis, :director)
  end

end
