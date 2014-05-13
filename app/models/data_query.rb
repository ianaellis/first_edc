class DataQuery < ActiveRecord::Base
  attr_accessible :data_manager, :subject_id, :investigator_name, :crf_measure_number, :query_notes, :resolution_notes
end
