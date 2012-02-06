class Field < ActiveRecord::Base
	belongs_to:local
	has_many:photoalbum
	has_many:hire
end
