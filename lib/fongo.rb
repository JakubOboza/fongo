require 'fongo_log'
require 'fongo_param_builder'
require 'fongo_shard'

module Fongo
  include Fongo::Log
  include Fongo::ParamBuilder

  VERSION = '0.0.1'

  def self.config(&block)
    FongoConfig.new(&block)
  end

  def self.deploy(&block)
    self.config(&block)
  end

  class FongoConfig
    include Fongo::Shard

    def initialize(&block)
      yield(self.class) if block_given?
    end

  end

end

