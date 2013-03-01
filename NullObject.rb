module NullObject
   def deaf(selector) 
     deaf_with_result(selector, nil)
   end

   def deaf_numeric(selector)
      deaf_with_result(selector, 0)
   end

   private 

   def deaf_with_result(selector, deaf_result)
     self.instance_eval do
       define_method(selector) do |*args|
         deaf_result
       end
     end
   end
end

class Object 
  extend NullObject
end
