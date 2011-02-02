require File.join(File.dirname(__FILE__), '..', 'game', 'Board.rb')

describe Board do
  
  describe "Creation" do
    it "can be created with no parameters" do
      board = Board.new
    end
  end
  
  describe "Initial state" do
    before(:each) do
      @board = Board.new
    end
    
    it "has nine positions defined" do
      @board.marks.length.should == 9
    end
    
    it "is empty after creation" do
      @board.marks.each { |position, mark| mark.should == '' }
    end
    
    it "can access empty marks individually" do
      positions = [:UpperLeft, :UpperMiddle, :UpperRight,
        :MiddleLeft, :MiddleMiddle, :MiddleRight,
        :LowerLeft, :LowerMiddle, :LowerRight ]
      positions.each do |position|
        @board.markAt(position).should == ''
      end
    end
  end
  
end