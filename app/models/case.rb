class Case < ActiveRecord::Base
  belongs_to :judge
  has_many   :defendants

  has_and_belongs_to_many :lawyers
  # Remember to create a migration!
end
