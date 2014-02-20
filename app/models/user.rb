class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # has_and_belongs_to_many :roles
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :roles

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, :site_study_coordinator, :project_coordinator, :site_pi, :lead_pi_sc, :vetpals_facilitator, :other_site_investigators
  # attr_accessible :title, :body

  ####
  # Role Based Association 
  # https://github.com/ryanb/cancan/wiki/Role-Based-Authorization
  ####
  ROLES = %w[admin site_study_coordinator project_coordinator site_pi lead_pi_sc vetpals_facilitator other_site_investigators]
  def roles=(roles)
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
  end

  def roles
    ROLES.reject do |r|
      ((roles_mask.to_i || 0) & 2**ROLES.index(r)).zero?
    end
  end

  def is?(role)
    roles.include?(role.to_s)
  end

  ####
end
