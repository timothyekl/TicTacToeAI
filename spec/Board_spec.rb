require File.join(File.dirname(__FILE__), '..', 'game', 'Board.rb')

describe Board do
  
  before(:each) do
    @positions = [:UpperLeft, :UpperMiddle, :UpperRight,
      :MiddleLeft, :MiddleMiddle, :MiddleRight,
      :LowerLeft, :LowerMiddle, :LowerRight ]
  end
  
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
      @board.marks.each { |position, mark| mark.should == :Empty }
    end
    
    it "can access empty marks individually" do
      @positions.each do |position|
        @board.markAt(position).should == :Empty
      end
    end
  end
  
  describe "during use" do
    before(:each) do
      @board = Board.new
    end
    
    it "can write and read an x at each position" do
      @positions.each do |position|
        @board.setMark(position, :X)
        @board.markAt(position).should == :X
      end
    end
    
    it "can write and read an o at each position" do
      @positions.each do |position|
        @board.setMark(position, :O)
        @board.markAt(position).should == :O
      end
    end
    
    it "cannot set marks than x or o" do
      @positions.each do |position|
        @board.setMark(position, 'q')
        @board.markAt(position).should == :Empty
      end
    end
    
    it "can set marks only at legal positions" do
      @board.setMark(:RandomSymbol, :X)
      @board.marks.length.should == 9
      @board.marks.each { |position, mark| @positions.include?(position).should == true }
    end
    
    it "can set marks only at unmarked positions" do
      @board.setMark(:UpperLeft, :X)
      @board.setMark(:UpperLeft, :O)
      @board.markAt(:UpperLeft).should == :X
    end
  end
  
end