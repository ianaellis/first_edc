class CreateDataQueries < ActiveRecord::Migration
  def change
    create_table :data_queries do |t|
      t.integer :subject_id
      t.string :data_manager
      t.string :investigator_name
      t.string :crf_measure_number
      t.string :query_notes
      t.string :resolution_notes

      t.timestamps
    end
  end
end
