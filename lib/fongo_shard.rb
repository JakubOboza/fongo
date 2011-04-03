module Fongo

  module Shard

  def self.included(base)
    base.send :extend, ClassMethods
  end

  module ClassMethods
  end

  def add_shard(opts = {})
    Fongo::Shard::FongoShard.new(opts).deploy
  end

  class FongoShard

    attr_accessor :settings

    def initialize(opts)
      self.settings = opts
    end

    def deploy
     # TODO: perform deploy
     # Fongo.log "Deploying Mongo Shard to: #{Fongo::params(self.settings)}"
    end

  end

  end
end
