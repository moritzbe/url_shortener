class HomeController < ApplicationController
	#Controller! Gets requests from router and redirects them to the model
	#then shows views!
	def home
		redirection = Shorter.all.find_by(url: params[:url]).redirection
		redirect("/#{redirection}")	
	end

	def create
		# entry = Shorter.create(url: params[:url])
	end


end
