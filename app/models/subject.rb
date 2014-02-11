class Subject < ActiveRecord::Base
   include ActiveModel::Conversion
   extend ActiveModel::Naming
   has_one :baseline
   has_one :treatment_completion
   has_one :follow_up3_week
   has_one :follow_up6_week
   has_one :follow_up18_week
   has_one :follow_up6_month
   has_one :follow_up1_year

   #Screening Variables
   attr_accessible :subject_id, :study_site, :sc_smpsq_1, :sc_smpsq_2, :sc_smpsq_3, :sc_smpsq_4, :sc_smpsq_4a, :sc_smpsq_5, :sc_smpsq_6, :sc_smpsq_7, :sc_smpsq_8, :sc_smpsq_9, :sc_smpsq_10
   attr_accessible :sc_inc_1, :sc_inc_2, :sc_inc_2a, :sc_inc_2b, :sc_inc_3, :sc_inc_4, :sc_inc_5, :sc_exc_1, :sc_exc_2, :sc_exc_3, :sc_pd_1, :sc_pd_2, :sc_pd_3, :sc_pd_4, :sc_pd_4o, :sc_pd_5, :sc_pe_1, :sc_pe_2, :sc_pe_3, :sc_pe_4, :sc_pe_4a, :sc_pe_5, :sc_pe_5o, :sc_ic_1, :sc_ic_2, :sc_ic_3, :sc_ic_4, :sc_ic_5

   #Variables for Randomization
   attr_accessible :group_size_input, :site_input, :group_name

   #Validations for Randomization
   # validates_presence_of :group_size_input, :site_input, :group_name, :presence => true, :on => :update
   # validates_numericality_of :group_size_input, :site_input
   # validates :group_size_input, inclusion: { in: 6..10,
   #    message: "Please enter a group size between 6 and 10"
   # }


   attr_writer :current_step
   attr_writer :page_title

   # VALIDATIONS
   # Screening Validations
   

   def current_step
   	@current_step || steps.first
   end

   def page_title(the_title)
      @page_title = the_title
   end

   def steps
      if page_title == 'Baseline'
   	   %w[sfmfa phq whoqol_bref positive_negative mses_self pam spsir change_questionnaire prosthesis cognitive comorbidity pain mspss audit ]
      elsif page_title == 'Treatment Completion'
         %w[smfa phq whoqol_bref positive_negative pam spsir ssscq prosthesis pain complications mspss audit ptcs accessing_resources satisfaction ]
      elsif page_title == '6 Month' 
         %w[smfa phq whoqol_bref positive_negative mses_self pam spsir ssscq prosthesis pain complications mspss audit ]
      else
        %[#{self.page_title}]
      end
     
   end

   def next_step
   	self.current_step = steps[steps.index(current_step)+1]
   end

   def previous_step
   	self.current_step = steps[steps.index(current_step)-1]
   end

   def first_step?
   	current_step == steps.first
   end

   def last_step?
   	current_step == steps.last
   end

 

end
