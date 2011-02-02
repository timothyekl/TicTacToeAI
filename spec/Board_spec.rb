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
      @board.marks.each { |position, mark| mark.should == '' }
    end
    
    it "can access empty marks individually" do
      @positions.each do |position|
        @board.markAt(position).should == ''
      end
    end
  end
  
  describe "can read and write" do
    before(:each) do
      @board = Board.new
    end
    
    it "an x at each position" do
      @positions.each do |position|
        @board.setMark(position, 'x')
        @board.markAt(position).should == 'x'
      end
    end
    
    it "an o at each position" do
      @positions.each do |position|
        @board.setMark(position, 'o')
        @board.markAt(position).should == 'o'
      end
    end
    
    it "no other marks than x or o" do
      @positions.each do |position|
        @board.setMark(position, 'q')
        @board.markAt(position).should == ''
      end
    end
  end
  
end