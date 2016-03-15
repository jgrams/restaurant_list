class Owner < ActiveRecord::Base
	has_many :rest_lists, through: :rest_owners 
end