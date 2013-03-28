class Lawyer < ActiveRecord::Base
	has_many :dockets
	has_many :cases, :through => :dockets
end
