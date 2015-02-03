class CreateShorters < ActiveRecord::Migration
  def change
    create_table :shorters do |t|
      t.timestamps null: false
    end
  end
end
