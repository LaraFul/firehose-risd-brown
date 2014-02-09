class PicsController < ApplicationController
	def index
		@pics = Pic.all
	end

	def new
		@pic = Pic.new
	end

#Like what we ran in Ruby console or Heroku console: Pic.create(:hour => 1, :emotion => "happy", :learned => "HTML, SCSS")
#without setting values
	def create
		Pic.create( pics_params )
		redirect_to pics_path
	end

	private

	def pics_params
		params.require(:pic).permit(:hour, :emotion, :learned, :image)
	end

end
