class User < ActiveRecord::Base
  # (Remember to create a migration?)
	# I don't think this class needs a migration, since it's not associated
	# with any of the other data tables. It's used just to limit access
	# to the site.
	
  include 'BCrypt'


  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
