class AddSiteToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :user_study_site, :integer
  end
end
