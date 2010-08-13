class TaskCategory < ActiveRecord::Base
  attr_accessible :task_id, :category_id
  belongs_to :task
  belongs_to :category
end
