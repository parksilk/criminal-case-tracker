class Docket < ActiveRecord::Base
  belongs_to :lawyers
  belongs_to :cases
end
