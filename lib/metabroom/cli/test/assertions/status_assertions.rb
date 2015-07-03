gem 'minitest'; require 'minitest'

module Metabroom
  module CLI
    module Test
      module Assertions
        module StatusAssertions
          %w|assert refute|.each do |prefix|
            %w|success|.each do |base_method_name|
              method_name = [prefix,base_method_name].join('_')

              define_method(method_name) do |status=$?|
                raise(ArgumentError, "Pass in a status/exitcode or call #execute with your command first") unless status
                actual_status =  status.exitstatus if status.respond_to?(:exitstatus) || status.to_i
                assertion_method = "#{prefix}_equal"

                public_send(assertion_method, 0, actual_status)
              end
            end
          end
        end

        # Include module into Test::Assertions
        include StatusAssertions
      end
    end
  end
end
