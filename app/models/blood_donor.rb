class BloodDonor < ActiveRecord::Base
  attr_accessible :bloodGroup, :city, :email, :gender, :name, :state, :zip
  validates :name, :length => { :maximum => 30 }
  validates :zip, :length => { :maximum => 5 }
end
