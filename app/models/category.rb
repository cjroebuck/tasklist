class Category < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :task_categories
  has_many :tasks, :through => :task_categories
end
