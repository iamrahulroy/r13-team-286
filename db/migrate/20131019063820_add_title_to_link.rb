class AddTitleToLink < ActiveRecord::Migration
  def change
  	add_column :links, :title, :strin
  end
end
