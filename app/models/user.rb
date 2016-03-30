class User < ActiveRecord::Base
  has_one :profile, dependent: :destroy, autosave: true
  before_create :set_default_association

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
    return "#{first_name} #{last_name}".strip() if (first_name || last_name)
    "Anonymous"
  end


  def set_default_association
    build_profile
    true
  end
end
