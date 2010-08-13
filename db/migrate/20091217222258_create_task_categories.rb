class CreateTaskCategories < ActiveRecord::Migration
  def self.up
    create_table :task_categories do |t|
      t.integer :task_id
      t.integer :category_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :task_categories
  end
end
