require File.join(File.dirname(__FILE__), '..', 'game', 'ComputerPlayer.rb')

describe ComputerPlayer do
  
  it "can be created" do
    XPlayer = ComputerPlayer.new(:X)
    OPlayer = ComputerPlayer.new(:O)
  end
  
end