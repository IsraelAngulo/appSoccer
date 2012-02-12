class Owner < ActiveRecord::Base
	belongs_to:typedocument
	belongs_to:sex
	belongs_to:typeuser
end
