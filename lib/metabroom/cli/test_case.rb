'minitest'.tap do |minitest|
  gem minitest
  require minitest
end # Get the gem, not stdlib
require 'metabroom/cli/test/assertions'
require 'metabroom/cli/test/methods'

module Metabroom
  module CLI
    class TestCase < ::Minitest::Test
      include Test::Assertions
      include Test::Methods
    end
  end
end

