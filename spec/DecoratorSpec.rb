require_relative "../Decorator.rb"

class DecoratorSpec
  describe Decorator, "#decorate" do   
     class M; def x; 0; end; def y; 1; end; end
     class H; decorates; end; 
     
     it "should forward messages by default" do 
       h = H.new
       h.decoree = M.new
       h.x.should == 0
       h.y.should == 1
     end

     it "should intercept instead_of" do
       class J
          decorates  

          instead_of :y do
            2
          end
       end 

       j = J.new
       j.decoree = M.new
       j.x.should == 0
       j.y.should == 2 
     end


     it "should intercept around" do
       class K 
         decorates
         around :y do  
           proceed + 3
         end
       end
     end
  end
end
 
