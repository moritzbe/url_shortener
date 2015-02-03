class Addcounter < ActiveRecord::Migration
  def change
  	add_column :shorters, :counter, :integer
  end
end
