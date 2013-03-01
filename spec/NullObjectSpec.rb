require_relative "../NullObject.rb"


class NullSpec
  describe NullObject, "#deaf" do
    class F; deaf :foo; end
    it "should create an empty method" do
      F.new.foo.should be nil
    end
  end
  
  describe NullObject, "#deaf_numeric" do
    class G;  deaf_numeric :bar; end
    it "should create a method that anwesers 0" do
      G.new.bar.should == 0
    end
  end
end
