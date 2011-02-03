require File.join(File.dirname(__FILE__), '..', 'game', 'ComputerPlayer.rb')
require File.join(File.dirname(__FILE__), '..', 'game', 'Board.rb')

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
  
  describe "with mark X" do
    
    before(:each) do
      @player = ComputerPlayer.new(:X)
    end
    
    describe "for an empty board" do
      it "should play the center" do
        board = Board.new
        @player.getMove(board).should == :MiddleMiddle
      end
    end
    
  end
  
end