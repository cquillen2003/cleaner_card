class Project < ActiveRecord::Base
  attr_accessible :end_date, :name, :resolution, :start_date, :notes, :status
  
  has_many :tasks
  
  
end
