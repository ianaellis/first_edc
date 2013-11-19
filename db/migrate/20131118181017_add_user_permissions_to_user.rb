class AddUserPermissionsToUser < ActiveRecord::Migration
  def change
    add_column :users, :site_study_coordinator, :boolean
    add_column :users, :project_coordinator, :boolean
    add_column :users, :site_pi, :boolean
    add_column :users, :lead_pi_sc, :boolean
    add_column :users, :vetpals_facilitator, :boolean
    add_column :users, :other_site_investigators, :boolean
  end
end
