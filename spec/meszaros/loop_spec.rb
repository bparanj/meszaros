require 'spec_helper'
require 'meszaros/loop'

module Meszaros
  describe Loop do
    it "should allow data driven spec : 0" do
      result = []
      Loop.data_driven_spec([]) do |element|
        result << element
      end

      result.should be_empty
    end
    
    it "should allow data driven spec : 1" do
      result = []
      Loop.data_driven_spec([4]) do |element|
        result << element
      end

      result.should == [4]
    end
    
    it "should allow data driven spec : n" do
      result = []
      Loop.data_driven_spec([1,2,3,4]) do |element|
        result << element
      end

      result.should == [1,2,3,4]
    end

    it "should raise eresultception when nil is passed as the parameter to data driven spec" do
      expect do
        Loop.data_driven_spec(nil) do |element|
          true.should be_true
        end
      end.to raise_error

    end

    it "should allow eresultecution of a chunk of code for 0 number of times" do
      result = 0
      
      Loop.repeat(0) do
        result += 1        
      end
      
      result.should == 0
    end
    
    it "should allow eresultecution of a chunk of code for 1 number of times" do
      result = 0
      
      Loop.repeat(1) do
        result += 1        
      end
      
      result.should == 1
    end
    
    it "should raise eresultception when nil is passed for the parameter to repeat" do      
      expect do
        Loop.repeat(nil) do
          true.should be_true      
        end
      end.to raise_error
      
    end

    it "should raise eresultception when string is passed for the parameter to repeat" do      
      expect do
        Loop.repeat("dumb") do
          true.should be_true        
        end
      end.to raise_error
    end

    it "should raise eresultception when float is passed for the parameter to repeat" do      
      expect do
        Loop.repeat(2.2) do
          true.should be_true        
        end
      end.to raise_error
    end
    
    it "should allow eresultecution of a chunk of code for n number of times" do
      result = 0
      
      Loop.repeat(3) do
        result += 1        
      end
      
      result.should == 3
    end
  end  
end
