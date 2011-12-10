class User < ActiveRecord::Base
  belongs_to :house
  has_many :expenses
  has_many :payments

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  validates_presence_of :email, :encrypted_password
  validates_uniqueness_of :email, :encrypted_password
  attr_accessible :email, :password, :password_confirmation, :remember_me

  def to_s
    "#{first_name} #{last_name}" || email
  end

  def outstanding_expenses
    self.expenses.outstanding
  end
end
