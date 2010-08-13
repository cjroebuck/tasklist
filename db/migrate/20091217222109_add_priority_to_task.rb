class AddPriorityToTask < ActiveRecord::Migration
  def self.up
    add_column :tasks, :priority_id, :int
  end

  def self.down
    remove_column :tasks, :priority_id
  end
end
