class Task < ActiveRecord::Base
  attr_accessible :name, :description, :finish_by, :category_ids, :priority_id
  has_many :task_categories
  has_many :categories, :through => :task_categories
  belongs_to :priority
end
