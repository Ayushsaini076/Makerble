class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :role
  has_many:patients
  validates :name,presence:true
  before_save:assign_role

  def assign_role
    self.role = Role.find_by name:'receptionist' if role.nil?
  end

  def receptionist?
    role.name == 'receptionist'
  end

  def doctor?
    role.name == 'doctor'
  end
end
