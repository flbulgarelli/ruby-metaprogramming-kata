module Singleton
  def singletonize
    self.instance_eval do
     
      def self.instance 
        if(@instance.nil?) 
          @instance = self._new 
        end
        @instance   
      end
      
      class << self
        alias_method :_new, :new

        def new
          raise "is a singleton, dude!"
        end
      end
      
      
    end
  end
end

class Object
  extend Singleton
end
