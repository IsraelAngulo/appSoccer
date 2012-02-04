class Customer < ActiveRecord::Base
	belongs_to:typedocument
	belongs_to:sex
	belongs_to:district
end
