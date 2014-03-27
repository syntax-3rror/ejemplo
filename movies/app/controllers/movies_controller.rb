class MoviesController < ApplicationController
	skip_before_filter :verify_authenticity_token
	
	def index 
		@movies = Movie.all
	end	
	
	def new 
		@movie = Movie.new
	end

	def edit
		@movie= Movie.find(params[:id])
	end	
	
	def create 
		#save data of FORM  
		@movie = Movie.new
		@movie.name=  params[:movie][:name]
		#SAVE IN  DATABASE
		if @movie.save
			#redirigiendo a la raiz
			redirect_to '/' , notice: 'The movie has been sucessfully created  '

		else
			# a la vista
			render 'new'
		end
	end	
	def update
		@movie = Movie.find(params[:d])
		@movie.name = params[:movie][:name]

		if @movie.save
			redirect_to '/', notice: 'The movie has been  sucessfully updated'
		else
			render 'edit'
		end
	end	

	def delete
		Movie.delete(params[:id])
		redirect_to '/' , notice: 'The movie has been sucessfully deleted  '

		
	end

end
