class Field < ActiveRecord::Base
	belongs_to:local
	has_many:photoalbum
end
