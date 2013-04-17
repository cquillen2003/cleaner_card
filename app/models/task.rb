class Task < ActiveRecord::Base
  attr_accessible :end_date, :name, :resolution, :start_date, :project_id
  
  belongs_to :project
  
end
