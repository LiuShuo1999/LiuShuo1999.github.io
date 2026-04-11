require "bundler/setup"
require "logger"

class Object
  def tainted?
    false
  end unless method_defined?(:tainted?)

  def untaint
    self
  end unless method_defined?(:untaint)
end

require "jekyll/stevenson"

module Jekyll
  class Stevenson
    unless method_defined?(:codex_original_initialize)
      alias_method :codex_original_initialize, :initialize
    end

    def initialize(*args, &block)
      codex_original_initialize(*args, &block)
      @level_override ||= {}
    end
  end
end
