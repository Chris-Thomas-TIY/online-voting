class Constituent < ActiveRecord::Base
  has_many :opinions
  validates :email, uniqueness: true
  has_secure_password
  scope :owner, -> { where(email: 'owner@person.com') }

  def self.find_specific_email(address)
  where(email: address)
  end
end
