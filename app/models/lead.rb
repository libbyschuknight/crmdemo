class Lead < ActiveRecord::Base
  validates :email, presence: true

  def self.active
    where(active: true)
  end
end