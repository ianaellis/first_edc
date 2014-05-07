class CreateFollowUpLogs < ActiveRecord::Migration
  def change
    create_table :follow_up_logs do |t|
      t.integer :site

      t.integer :seattle_baseline_target
      t.integer :seattle_baseline_completed
      t.string :seattle_baseline_reasons

      t.integer :seattle_3week_target
      t.integer :seattle_3week_completed
      t.string :seattle_3week_reasons

      t.integer :seattle_6week_target
      t.integer :seattle_6week_completed
      t.string :seattle_6week_reasons

      t.integer :seattle_tc_target
      t.integer :seattle_tc_completed
      t.string :seattle_tc_reasons

      t.integer :seattle_18week_target
      t.integer :seattle_18week_completed
      t.string :seattle_18week_reasons

      t.integer :seattle_6month_target
      t.integer :seattle_6month_completed
      t.string :seattle_6month_reasons

      t.integer :seattle_1year_target
      t.integer :seattle_1year_completed
      t.string :seattle_1year_reasons


      t.integer :houston_baseline_target
      t.integer :houston_baseline_completed
      t.string :houston_baseline_reasons

      t.integer :houston_3week_target
      t.integer :houston_3week_completed
      t.string :houston_3week_reasons

      t.integer :houston_6week_target
      t.integer :houston_6week_completed
      t.string :houston_6week_reasons

      t.integer :houston_tc_target
      t.integer :houston_tc_completed
      t.string :houston_tc_reasons

      t.integer :houston_18week_target
      t.integer :houston_18week_completed
      t.string :houston_18week_reasons

      t.integer :houston_6month_target
      t.integer :houston_6month_completed
      t.string :houston_6month_reasons

      t.integer :houston_1year_target
      t.integer :houston_1year_completed
      t.string :houston_1year_reasons

      t.integer :cleveland__baseline_target
      t.integer :cleveland__baseline_completed
      t.string :cleveland__baseline_reasons

      t.integer :cleveland__3week_target
      t.integer :cleveland__3week_completed
      t.string :cleveland__3week_reasons

      t.integer :cleveland__6week_target
      t.integer :cleveland__6week_completed
      t.string :cleveland__6week_reasons

      t.integer :cleveland__tc_target
      t.integer :cleveland__tc_completed
      t.string :cleveland__tc_reasons

      t.integer :cleveland__18week_target
      t.integer :cleveland__18week_completed
      t.string :cleveland__18week_reasons

      t.integer :cleveland__6month_target
      t.integer :cleveland__6month_completed
      t.string :cleveland_6month_reasons

      t.integer :cleveland__1year_target
      t.integer :cleveland__1year_completed
      t.string :cleveland__1year_reasons
      
      t.integer :tampa_baseline_target
      t.integer :tampa_baseline_completed
      t.string :tampa_baseline_reasons

      t.integer :tampa_3week_target
      t.integer :tampa_3week_completed
      t.string :tampa_3week_reasons

      t.integer :tampa_6week_target
      t.integer :tampa_6week_completed
      t.string :tampa_6week_reasons

      t.integer :tampa_tc_target
      t.integer :tampa_tc_completed
      t.string :tampa_tc_reasons

      t.integer :tampa_18week_target
      t.integer :tampa_18week_completed
      t.string :tampa_18week_reasons

      t.integer :tampa_6month_target
      t.integer :tampa_6month_completed
      t.string :tampa_6month_reasons

      t.integer :tampa_1year_target
      t.integer :tampa_1year_completed
      t.string :tampa_1year_reasons

      t.timestamps
    end
  end
end
