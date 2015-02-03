class AddRedirection < ActiveRecord::Migration
  def change
  	add_column :shorters, :redirection, :text
  end
end