class Local < ActiveRecord::Base
	belongs_to:district
	has_many:field
end
