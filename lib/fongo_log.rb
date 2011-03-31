# just minimal layer over logger

module Fongo

  module Log

  def self.included(base)
    base.send :extend, ClassMethods
  end

  module ClassMethods
    def log(msg)
      puts msg
    end
  end

  end

end
