class Sex < ActiveRecord::Base
  has_many :owners
  has_many :customers
end
