class AddTasks < ActiveRecord::Migration
  def change
  	create_table :tasks do |t|
  		t.integer :list_id
  		t.string :description
  		t.timestamps
  	end
  end
end
