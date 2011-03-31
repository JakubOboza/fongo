require File.join(File.dirname(__FILE__), 'spec_helper')

describe "FongoParamBuilder" do

  before(:all) do
    @test_params = {:dbpath => "/tmp/db/shard/a",
                    :host   => "localhost",
                    :port   => "27020" }
  end

  describe "param builder in fongo" do

    it "should run param builder from Fongo" do
      Fongo.params(@test_params).should
        eql(" -dbpath=/tmp/db/shard/a -host=localhost -port=27020 ")
    end
  end

end
