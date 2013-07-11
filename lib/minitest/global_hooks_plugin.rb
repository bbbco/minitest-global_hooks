module Minitest

  def self.plugin_global_hooks_init options
    self.reporter << GlobalHooks.new
  end

  class GlobalHooks < Reporter
    def start
      Minitest.global_setup
      super
    end

    def report
      Minitest.global_teardown
      super
    end

  end


end