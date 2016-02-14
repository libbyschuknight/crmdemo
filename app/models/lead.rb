class Lead < ActiveRecord::Base
  def self.active
    where(active: true)
  end
end