require "rake"
require "parallel_tests/tasks"

module DicedTurnips
  module Tasks
    class << self
      def blank?(value)
        value.respond_to?(:empty?) ? value.empty? : !value
      end

      def presence(value)
        value unless blank?(value)
      end

      def parse_args(args)
        count, *rest = args.values_at(:count, :pattern, :options).map(&method(:presence))
        [ count.to_i.nonzero?, *rest ]
      end
    end
  end
end

namespace :parallel do
  desc "run turnips in parallel"
  task :turnips, %i[ count pattern options ] do |t, args|
    ParallelTests::Tasks.check_for_pending_migrations

    $LOAD_PATH << File.expand_path(File.join(__dir__, ".."))
    require "parallel_tests"

    opts = %w[ -n --pattern --test-options ].zip(DicedTurnips::Tasks.parse_args(args)).select(&:last).flatten

    executable = File.join(__dir__, *%w[ .. .. bin parallel_turnip ])

    command = [ executable, "spec", *opts ]
    if ParallelTests::WINDOWS
      command.unshift(File.join(RbConfig::CONFIG["bindir"], RbConfig::CONFIG["ruby_install_name"]))
    end

    abort unless system(Shellwords.join(command))
  end
end
