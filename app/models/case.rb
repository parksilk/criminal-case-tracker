class Case < ActiveRecord::Base
  belongs_to :judge
  has_many   :defendants

  has_many   :dockets
  has_many   :lawyers, :through => :dockets
  # Remember to create a migration!
end
