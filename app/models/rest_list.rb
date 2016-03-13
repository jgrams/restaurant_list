class RestList < ActiveRecord::Base
  belongs_to :owner
  validates :rest_name, :presence => {:message => "Restaurant Name is a Required Field"}
  validates :phone_num, :presence => {:message => "Phone Number is a Required Field"}
  validates_format_of :phone_num, :with => /\A(\+1|1)?([2-9]\d\d[2-9]\d{6})\z/, message: 'This number isn\'t formatted properly, try it like 555-555-5555'
  validates :street_address, :presence => {:message => "Street Address is a Required Field"}
  validates :city, :presence => {:message => "City is a Required Field"}
  validates :state, :presence => {:message => "State is a Required Field"}
  validates :zipcode, :presence => {:message => "Zip Code is a Required Field"}
  STATES = ['AL', 'AK', 'AS', 'AZ', 'AR', 'CA', 'CO', 'CT', 'DE', 'DC', 'FM', 'FL', 'GA', 'GU', 'HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME', 'MH', 'MD', 'MA', 'MI', 'MN', 'MS', 'MO', 'MT', 'NE', 'NV', 'NH', 'NJ', 'NM', 'NY', 'NC', 'ND', 'MP', 'OH', 'OK', 'OR', 'PW', 'PA', 'PR', 'RI', 'SC', 'SD', 'TN', 'TX', 'UT', 'VT', 'VI', 'VA', 'WA', 'WV', 'WI', 'WY', 'AE', 'AA', 'AP']
end