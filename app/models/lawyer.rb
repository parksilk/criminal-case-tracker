class Lawyer < ActiveRecord::Base
	has_and_belongs_to_many :cases
	belongs_to :lawyer_type
end
