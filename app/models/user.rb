# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  uid                    :string(255)      default(""), not null
#  provider               :string(255)      default(""), not null
#  name                   :string(255)
#  deleted_at             :datetime
#  created_at             :datetime
#  updated_at             :datetime
#

class User < ActiveRecord::Base
  acts_as_paranoid

  def to_param
    name
  end

  def self.find(key)
    find_by(name: key)
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :omniauthable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  has_many :authentications
  has_many :photos

  validates :name, presence: true, uniqueness: true

  # Omniauth
  def apply_omniauth(data)
    authentications.build(:provider => data['provider'],
      :uid => data['uid'],
      :token => data['credentials'].token,
      :token_secret => data['credentials'].secret)
  end
end
