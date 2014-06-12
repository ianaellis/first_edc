class AddSubjectIdToPsychosocialScales < ActiveRecord::Migration
  def change
    add_column :psychosocial_scales, :subject_id, :integer
  end
end
