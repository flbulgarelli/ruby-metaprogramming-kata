require_relative "../Singleton.rb"

class SingletonSpec
   class Foo; singletonize; end

   describe Singleton, "#singletonize" do
     it "should add method #instance" do
       Foo.instance 
     end

     it "should make the instance global accesible" do
       Foo.instance.should == Foo.instance
     end

     it "should avoid direct creation" do
       expect { Foo.new }.to raise_error (RuntimeError)
     end
   end
end
