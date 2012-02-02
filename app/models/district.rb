class District < ActiveRecord::Base
	has_many :locals
	has_many :customers
end
