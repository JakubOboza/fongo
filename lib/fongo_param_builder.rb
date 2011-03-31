module Fongo

  module ParamBuilder

  def self.included(base)
    base.send :extend, ClassMethods
  end

  module ClassMethods
    def params(param_hash)
      param_hash.inject(" "){|acc, pair| acc += "-#{pair.first}=#{pair.last} " }
    end
  end

  end

end
