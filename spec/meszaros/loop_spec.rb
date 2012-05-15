require 'spec_helper'
require 'meszaros/loop'

module Meszaros
  describe Loop do
    it "should allow data driven spec : 0" do
      x = []
      Loop.data_driven_spec([]) do |element|
        x << element
      end

      x.should == []
    end
    
    it "should allow data driven spec : 1" do
      x = []
      Loop.data_driven_spec([4]) do |element|
        x << element
      end

      x.should == [4]
    end
    
    it "should allow data driven spec : n" do
      x = []
      Loop.data_driven_spec([1,2,3,4]) do |element|
        x << element
      end

      x.should == [1,2,3,4]
    end

    it "should raise exception when nil is passed as the parameter to data driven spec" do
      expect do
        Loop.data_driven_spec(nil) do |element|
          fail
        end
      end.to raise_error

    end

    it "should allow execution of a chunk of code for 0 number of times" do
      x = 0
      
      Loop.repeat(0) do
        x += 1        
      end
      
      x.should == 0
    end
    
    it "should allow execution of a chunk of code for 1 number of times" do
      x = 0
      
      Loop.repeat(1) do
        x += 1        
      end
      
      x.should == 1
    end
    
    it "should raise exception when nil is passed for the parameter to repeat" do      
      expect do
        Loop.repeat(nil) do
          fail        
        end
      end.to raise_error
      
    end

    it "should raise exception when string is passed for the parameter to repeat" do      
      expect do
        Loop.repeat("dumb") do
          fail        
        end
      end.to raise_error
    end

    it "should raise exception when float is passed for the parameter to repeat" do      
      expect do
        Loop.repeat(2.2) do
          fail        
        end
      end.to raise_error
    end
    
    it "should allow execution of a chunk of code for n number of times" do
      x = 0
      
      Loop.repeat(3) do
        x += 1        
      end
      
      x.should == 3
    end
  end  
end
