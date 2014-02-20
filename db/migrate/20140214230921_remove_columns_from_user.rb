class RemoveColumnsFromUser < ActiveRecord::Migration
  def up
  	remove_column :users, :admin
  	remove_column :users, :site_study_coordinator
  	remove_column :users, :project_coordinator
  	remove_column :users, :site_pi
  	remove_column :users, :lead_pi_sc
  	remove_column :users, :vetpals_facilitator
  	remove_column :users, :other_site_investigators
  end

  def down
  	add_column :users, :admin
  	add_column :users, :site_study_coordinator
  	add_column :users, :project_coordinator
  	add_column :users, :site_pi
  	add_column :users, :lead_pi_sc
  	add_column :users, :vetpals_facilitator
  	add_column :users, :other_site_investigators
  end
end
