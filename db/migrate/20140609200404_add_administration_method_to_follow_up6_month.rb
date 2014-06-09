class AddAdministrationMethodToFollowUp6Month < ActiveRecord::Migration
  def change
  	add_column :follow_up6_months, :administration_method, :integer
  end
end
