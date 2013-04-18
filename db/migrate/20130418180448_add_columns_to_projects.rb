class AddColumnsToProjects < ActiveRecord::Migration
  def change
  	add_column :projects, :notes, :string
  	add_column :projects, :status, :string
  	add_column :projects, :planned_week, :datetime
  	add_column :projects, :planned_order, :integer
  	add_column :projects, :backlog_order, :integer
  end
end
