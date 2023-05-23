class EstrenosController < ApplicationController
 def index
  	@estrenos = Estreno.all
  end

  def new
  end


  def new
  	@estreno = Estreno.new
  end
 
  def create
  	@estreno = Estreno.new(estreno_params)
  	if @estreno.save
  		redirect_to action: "index"
  	else
  		render :new, status: :unprocessable_entity
  	end
  end

  private

  def estreno_params
  	params.require(:estreno).permit(:name, :sypnosis, :director)
  end

end
