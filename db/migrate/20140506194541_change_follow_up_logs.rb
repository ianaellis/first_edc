class ChangeFollowUpLogs < ActiveRecord::Migration
  def change
  	  remove_column :follow_up_logs, :seattle_baseline_target
      remove_column :follow_up_logs, :seattle_baseline_completed
      remove_column :follow_up_logs, :seattle_baseline_reasons

      remove_column :follow_up_logs, :seattle_3week_target
      remove_column :follow_up_logs, :seattle_3week_completed
      remove_column :follow_up_logs, :seattle_3week_reasons

      remove_column :follow_up_logs, :seattle_6week_target
      remove_column :follow_up_logs, :seattle_6week_completed
      remove_column :follow_up_logs, :seattle_6week_reasons

      remove_column :follow_up_logs, :seattle_tc_target
      remove_column :follow_up_logs, :seattle_tc_completed
      remove_column :follow_up_logs, :seattle_tc_reasons

      remove_column :follow_up_logs, :seattle_18week_target
      remove_column :follow_up_logs, :seattle_18week_completed
      remove_column :follow_up_logs, :seattle_18week_reasons

      remove_column :follow_up_logs, :seattle_6month_target
      remove_column :follow_up_logs, :seattle_6month_completed
      remove_column :follow_up_logs, :seattle_6month_reasons

      remove_column :follow_up_logs, :seattle_1year_target
      remove_column :follow_up_logs, :seattle_1year_completed
      remove_column :follow_up_logs, :seattle_1year_reasons


      remove_column :follow_up_logs, :houston_baseline_target
      remove_column :follow_up_logs, :houston_baseline_completed
      remove_column :follow_up_logs, :houston_baseline_reasons

      remove_column :follow_up_logs, :houston_3week_target
      remove_column :follow_up_logs, :houston_3week_completed
      remove_column :follow_up_logs, :houston_3week_reasons

      remove_column :follow_up_logs, :houston_6week_target
      remove_column :follow_up_logs, :houston_6week_completed
      remove_column :follow_up_logs, :houston_6week_reasons

      remove_column :follow_up_logs, :houston_tc_target
      remove_column :follow_up_logs, :houston_tc_completed
      remove_column :follow_up_logs, :houston_tc_reasons

      remove_column :follow_up_logs, :houston_18week_target
      remove_column :follow_up_logs, :houston_18week_completed
      remove_column :follow_up_logs, :houston_18week_reasons

      remove_column :follow_up_logs, :houston_6month_target
      remove_column :follow_up_logs, :houston_6month_completed
      remove_column :follow_up_logs, :houston_6month_reasons

      remove_column :follow_up_logs, :houston_1year_target
      remove_column :follow_up_logs, :houston_1year_completed
      remove_column :follow_up_logs, :houston_1year_reasons

      remove_column :follow_up_logs, :cleveland__baseline_target
      remove_column :follow_up_logs, :cleveland__baseline_completed
      remove_column :follow_up_logs, :cleveland__baseline_reasons

      remove_column :follow_up_logs, :cleveland__3week_target
      remove_column :follow_up_logs, :cleveland__3week_completed
      remove_column :follow_up_logs, :cleveland__3week_reasons

      remove_column :follow_up_logs, :cleveland__6week_target
      remove_column :follow_up_logs, :cleveland__6week_completed
      remove_column :follow_up_logs, :cleveland__6week_reasons

      remove_column :follow_up_logs, :cleveland__tc_target
      remove_column :follow_up_logs, :cleveland__tc_completed
      remove_column :follow_up_logs, :cleveland__tc_reasons

      remove_column :follow_up_logs, :cleveland__18week_target
      remove_column :follow_up_logs, :cleveland__18week_completed
      remove_column :follow_up_logs, :cleveland__18week_reasons

      remove_column :follow_up_logs, :cleveland__6month_target
      remove_column :follow_up_logs, :cleveland__6month_completed
      remove_column :follow_up_logs, :cleveland_6month_reasons

      remove_column :follow_up_logs, :cleveland__1year_target
      remove_column :follow_up_logs, :cleveland__1year_completed
      remove_column :follow_up_logs, :cleveland__1year_reasons
      
      remove_column :follow_up_logs, :tampa_baseline_target
      remove_column :follow_up_logs, :tampa_baseline_completed
      remove_column :follow_up_logs, :tampa_baseline_reasons

      remove_column :follow_up_logs, :tampa_3week_target
      remove_column :follow_up_logs, :tampa_3week_completed
      remove_column :follow_up_logs, :tampa_3week_reasons

      remove_column :follow_up_logs, :tampa_6week_target
      remove_column :follow_up_logs, :tampa_6week_completed
      remove_column :follow_up_logs, :tampa_6week_reasons

      remove_column :follow_up_logs, :tampa_tc_target
      remove_column :follow_up_logs, :tampa_tc_completed
      remove_column :follow_up_logs, :tampa_tc_reasons

      remove_column :follow_up_logs, :tampa_18week_target
      remove_column :follow_up_logs, :tampa_18week_completed
      remove_column :follow_up_logs, :tampa_18week_reasons

      remove_column :follow_up_logs, :tampa_6month_target
      remove_column :follow_up_logs, :tampa_6month_completed
      remove_column :follow_up_logs, :tampa_6month_reasons

      remove_column :follow_up_logs, :tampa_1year_target
      remove_column :follow_up_logs, :tampa_1year_completed
      remove_column :follow_up_logs, :tampa_1year_reasons

      add_column :follow_up_logs, :baseline_target, :integer
      add_column :follow_up_logs, :baseline_completed, :integer
      add_column :follow_up_logs, :baseline_reasons, :string

      add_column :follow_up_logs, :week3_target, :integer
      add_column :follow_up_logs, :week3_completed, :integer
      add_column :follow_up_logs, :week3_reasons, :string

      add_column :follow_up_logs, :week6_target, :integer
      add_column :follow_up_logs, :week6_completed, :integer
      add_column :follow_up_logs, :week6_reasons, :string

      add_column :follow_up_logs, :tc_target, :integer
      add_column :follow_up_logs, :tc_completed, :integer
      add_column :follow_up_logs, :tc_reasons, :string

      add_column :follow_up_logs, :week18_target, :integer
      add_column :follow_up_logs, :week18_completed, :integer
      add_column :follow_up_logs, :week18_reasons, :string

      add_column :follow_up_logs, :month6_target, :integer
      add_column :follow_up_logs, :month6_completed, :integer
      add_column :follow_up_logs, :month6_reasons, :string

      add_column :follow_up_logs, :year1_target, :integer
      add_column :follow_up_logs, :year1_completed, :integer
      add_column :follow_up_logs, :year1_reasons, :string
  end
end
