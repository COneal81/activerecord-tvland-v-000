class CreateCharactors > ActiveRecord::Migration[4.2]
  
  def change
    create_tabe :charactors do |t|
      t.string :name 
      t.integer :show_id 
    end
  end
  
end 