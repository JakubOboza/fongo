require File.join(File.dirname(__FILE__), 'spec_helper')

describe "Fongo" do

  describe "config dsl" do

    it "should create FongoConfig" do
      Fongo::FongoConfig.new do
      end.should be_kind_of(Fongo::FongoConfig)
    end

    it "should add shard" do
      Fongo::FongoConfig.new do |config|
        config.add_shard :params => "test params"
      end.should be_kind_of(Fongo::FongoConfig)
    end

    it "should respond to simple config dsl" do

      Fongo.config do |config|

       config.add_shard :host => "localhost",
                        :port => "27020",
                        :dpath => "/tmp/db/shards/a"

      end.should be_kind_of(Fongo::FongoConfig)

    end

  end

end
