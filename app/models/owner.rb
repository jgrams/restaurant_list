class Owner < ActiveRecord::Base
	has_many :rest_lists, through: :rest_owners 
	has_many :rest_owners
end