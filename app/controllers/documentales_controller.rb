class DocumentalesController < ApplicationController
	def index
		@documentales = Documental.all
	end

	def new
	end


	def new
		@documental = Documental.new
	end

	def create
		@documental = Documental.new(documental_params)
		if @documental.save
			redirect_to action: "index"
		else
			render :new, status: :unprocessable_entity
		end
	end

	private

	def documental_params
		params.require(:documental).permit(:name, :sypnosis, :director)
	end
end
