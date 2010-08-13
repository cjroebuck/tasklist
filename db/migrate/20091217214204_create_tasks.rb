class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.date :finish_by
      t.int :category_id
      t.int :priority_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :tasks
  end
end
