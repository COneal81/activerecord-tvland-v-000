class CreateCharacters < ActiveRecord::Migration[4.2]
  
  def change
    create_tabe :characters do |t|
      t.string :name 
      t.integer :show_id 
    end
  end
  
end 