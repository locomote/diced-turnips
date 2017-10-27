require "parallel_tests/rspec/runner"
require "shellwords"

module ParallelTests
  module Turnip
    class Runner < ParallelTests::RSpec::Runner
      NAME = "Turnip"

      class << self
        def name
          "turnip"
        end

        def run_tests(test_files, process_number, num_processes, options)
          cmd = [ executable, options[:test_options], color, *test_files ].compact.reject(&:empty?).join(" ")
          execute_command(cmd, process_number, num_processes, options)
        end

        def test_file_name
          @test_file_name || "feature"
        end

        def test_suffix
          /\.feature$/
        end
      end
    end
  end
end
