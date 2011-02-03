require File.join(File.dirname(__FILE__), '..', 'game', 'ComputerPlayer.rb')

describe ComputerPlayer do
  
  describe "for a new game" do
    it "can be created with a valid mark" do
      XPlayer = ComputerPlayer.new(:X)
      OPlayer = ComputerPlayer.new(:O)
    end
    
    it "cannot be created with an invalid mark" do
      expect{ComputerPlayer.new(:Invalid)}.to raise_error(ArgumentError)
    end
    
    it "stores its mark" do
      XPlayer.mark.should == :X
      OPlayer.mark.should == :O
    end
  end
  
end