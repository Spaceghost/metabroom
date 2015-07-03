require 'open3'

module Metabroom
  module CLI
    module Test
      module Methods
        attr_reader :output, :status
        alias last_output output
        alias last_status status

        def outputs
          @outputs ||= []
        end

        def all_output
          outputs.join
        end

        def execute(*command_segments, stdin: nil, **options)
          options[:stdin_data] ||= stdin

          Open3.capture2e(*command_segments.map(&:to_s), options).tap do |output, status|
            self.outputs << self.last_output = output
            self.last_status = status.exitstatus
          end
        end

        private
        attr_writer :output, :status
        alias last_output= output=
        alias last_status= status=
      end
    end
  end
end

