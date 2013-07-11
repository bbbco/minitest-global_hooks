module Minitest

  class GlobalHooks < AbstractReporter

    VERSION = "0.1"

    def start
      puts "In Global Hooks setup"
      global_setup
      super
    end

    def report
      puts "In Global Hooks teardown"
      global_teardown
      super
    end

  end

  def self.plugin_global_hooks_init options
    Test::LifecycleHooks.module_eval do
      def global_setup; end
      def global_teardown; end
    end
    self.reporter << GlobalHooks.new
  end

end