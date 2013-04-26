class Project < ActiveRecord::Base
  attr_accessible :end_date, :name, :resolution, :start_date, :notes, :status, :tasks_attributes
  
  has_many :tasks
  accepts_nested_attributes_for :tasks
  
  
end
