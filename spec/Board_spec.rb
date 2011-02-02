require File.join(File.dirname(__FILE__), '..', 'game', 'Board.rb')

describe Board do
  describe "Creation" do
    it "can be created with no parameters" do
      board = Board.new
    end
  end
  
  describe "Accessing" do
    before(:each) do
      @board = Board.new
    end
    
    it "has nine positions defined" do
      @board.marks.length.should == 9
    end
    
    it "is empty after creation" do
      @board.marks.each { |position, mark| mark.should == '' }
    end
  end
end