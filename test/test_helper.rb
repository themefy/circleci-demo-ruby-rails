require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

conn = PG.connect(
  connect_timeout: 5,
  dbname: 'other_database',
  host: 'localhost',
  port: 5432,
  user: 'postgres')

Dir.glob(Rails.root.join 'test/external_data/*.sql') do |filename|
  File.read(filename)
  conn.exec(File.read(filename))
end

conn = nil

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end