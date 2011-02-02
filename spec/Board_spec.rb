require File.join(File.dirname(__FILE__), '..', 'game', 'Board.rb')

describe Board do
  describe "Creation" do
    it "can be created with no parameters" do
      board = Board.new
    end
  end
  
  describe "Accessing" do
    it "is empty after creation" do
      board = Board.new
      board.marks.each { |mark| mark.should == '' }
    end
  end
end