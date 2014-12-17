class Parish < ActiveRecord::Base
  has_many :users

  validates_presence_of :name
  validates_presence_of :pastor
  validates_presence_of :admin_name
  validates_presence_of :admin_email
  validates_presence_of :admin_email_type
  validates_presence_of :admin_primary_phone
  validates_presence_of :admin_primary_phone_type
  validates_presence_of :address_1
  validates_presence_of :address_2
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zip

end
