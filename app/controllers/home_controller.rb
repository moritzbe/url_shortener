class HomeController < ApplicationController
	#Controller! Gets requests from router and redirects them to the model
	#then shows views!
	def home
		if !Shorter.find_by(url: params[:url]).nil?
			redir = Shorter.find_by(url: params[:url]).redirection
			newrl=URI.parse(redir)
			redirect_to newrl.to_s
		else
		@stats = Shorter.all
		end	
	end

	def create
		# entry = Shorter.create(url: params[:url])
	end


end
