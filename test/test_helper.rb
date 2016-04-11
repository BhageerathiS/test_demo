#ENV['RAILS_ENV'] ||= 'test'
#require File.expand_path('../../config/environment', __FILE__)
#require 'rails/test_help'

#class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
 # fixtures :all

  # Add more helper methods to be used by all tests here...
#end



ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails'
require 'minitest/pride'

require 'minitest/rails/capybara'
Capybara.default_wait_time = 1

require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist

# Capybara.javascript_driver = :webkit

require "support/session_helpers"
require "support/shopping_helpers"

class ActiveSupport::TestCase
  include SessionHelpers

  fixtures :all
end

class ActiveRecord::Base
  mattr_accessor :shared_connection
  @@shared_connection = nil
  def self.connection
    @@shared_connection || retrieve_connection
  end
end
ActiveRecord::Base.shared_connection = ActiveRecord::Base.connection
ActiveRecord::Base.connection.execute("BEGIN TRANSACTION; END;")