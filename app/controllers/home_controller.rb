class HomeController < ApplicationController
	#Controller! Gets requests from router and redirects them to the model
	#then shows views!
	def home
		if !Shorter.find_by(url: params[:url]).nil?
			redir = Shorter.find_by(url: params[:url])
			redir.counter +=1
			redir.save
			newrl=URI.parse(redir.redirection)
			redirect_to newrl.to_s
		end	
		@stats = Shorter.all
#.limit(10).order("counters DESC")
	end

	def stats		
		redirect("/most_visited_pages")
	end	

	def create
		# entry = Shorter.create(url: params[:url])
	end


end
