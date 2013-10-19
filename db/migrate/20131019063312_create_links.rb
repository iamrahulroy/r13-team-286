class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
    	t.integer :user_id
    	t.string :url
    	t.text :description

      t.timestamps
    end
  end
end
