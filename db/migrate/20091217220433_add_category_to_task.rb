class AddCategoryToTask < ActiveRecord::Migration
  def self.up
    add_column :tasks, :category_id, :int
  end

  def self.down
    remove_column :tasks, :category_id
  end
end
