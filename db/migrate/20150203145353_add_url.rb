class AddUrl < ActiveRecord::Migration
	def change
  	add_column :shorters, :url, :text
  	end
end
