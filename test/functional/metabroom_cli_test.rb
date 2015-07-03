require 'test_helper'

class TestMetabroomCLI < Metabroom::CLI::TestCase
  def test_command_with_no_args
    execute :metabroom

    assert_success
  end
end
