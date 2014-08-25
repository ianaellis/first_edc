class Subject < ActiveRecord::Base
   include ActiveModel::Conversion
   extend ActiveModel::Naming
   self.per_page = 10000
   has_one :baseline
   has_one :treatment_completion
   has_one :follow_up3_week
   has_one :follow_up6_week
   has_one :follow_up18_week
   has_one :follow_up6_month
   has_one :follow_up1_year
   has_one :psychosocial_scale


   #Screening Variables
   attr_accessible :subject_id, :study_site, :sc_smpsq_1, :sc_smpsq_2, :sc_smpsq_3, :sc_smpsq_4, :sc_smpsq_4a, :sc_smpsq_5, :sc_smpsq_6, :sc_smpsq_7, :sc_smpsq_8, :sc_smpsq_9, :sc_smpsq_10
   attr_accessible :sc_inc_1, :sc_inc_2, :sc_inc_2a, :sc_inc_2b, :sc_inc_3, :sc_inc_4, :sc_inc_5, :sc_exc_1, :sc_exc_2, :sc_exc_3, :sc_pd_1, :sc_pd_2, :sc_pd_3, :sc_pd_4, :sc_pd_4o, :sc_pd_5, :sc_pe_1, :sc_pe_2, :sc_pe_3, :sc_pe_4, :sc_pe_4a, :sc_pe_5, :sc_pe_5o, :sc_ic_1, :sc_ic_2, :sc_ic_3, :sc_ic_4, :sc_ic_5
   attr_accessible :enrolled, :reason_not_enrolled, :reason_not_enrolled_other
   #Variables for Randomization
   attr_accessible :group_size_input, :site_input, :group_name, :screening_id, :telehealth, :sc_pe_3a
   attr_accessor :test_rand_variable, :treatment

   CRFS = %w[Baseline TreatmentCompletion FollowUp3Week FollowUp6Week FollowUp18Week FollowUp6Month FollowUp1Year]

   #Validations for Randomization
   # validates_presence_of :group_size_input, :site_input, :group_name, :presence => true, :on => :update
   # validates_numericality_of :group_size_input, :site_input
   # validates :group_size_input, inclusion: { in: 6..10,
   #    message: "Please enter a group size between 6 and 10"
   # }

   #Validations for new subject
   validates :screening_id, :presence => {:message => 'Screening ID cannot be blank.'}, :uniqueness => {:message => 'Screening ID already found in database.'}, :length => { is: 5 }, :format => {:with => /^S\w{4}$/i, :message => 'Format must be S####'}
   # validates :subject_id, :uniqueness => {:message => "Subject ID already found in database."}, :length => { is: 4, :message => 'Subject ID must be 4 numbers long' }
   validates :study_site, :presence => {:message => 'Study Site cannot be blank.'}
   # validates :enrolled, :presence => {:message => 'Enrolled cannot be blank.'}

end
