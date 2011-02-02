require File.join(File.dirname(__FILE__), '..', 'game', 'Board.rb')

describe Board do
  
  describe "can be created" do
    it "with no parameters" do
      board = Board.new
    end
  end
  
  describe "after creation" do
    before(:each) do
      @board = Board.new
    end
    
    it "has nine positions defined" do
      @board.marks.length.should == 9
    end
    
    it "is empty" do
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