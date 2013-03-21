class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.string :resolution

      t.timestamps
    end
  end
end
