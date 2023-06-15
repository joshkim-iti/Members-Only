class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def email_required?
    false
  end
  def email_changed?
    false
  end
  
  # For ActiveRecord 5.1+
  def will_save_change_to_email?
    false
  end
  
  has_many :clubhouse
  has_many :post
  has_many :comment
end
