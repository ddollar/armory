require 'spec'
require 'yaml'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'armory'

Spec::Runner.configure do |config|
  
end

def load_fixture(fixture)
  YAML::load_file(File.join(File.dirname(__FILE__), 'fixtures', "#{fixture}.yml"))
end