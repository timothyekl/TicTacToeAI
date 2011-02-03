class Board
  
  def initialize
    @marks = {}
    @positions = [:UpperLeft, :UpperMiddle, :UpperRight,
      :MiddleLeft, :MiddleMiddle, :MiddleRight,
      :LowerLeft, :LowerMiddle, :LowerRight ]
    @positions.each do |position|
      @marks[position] = ''
    end
  end
  
  def marks
    return @marks
  end
  
  def markAt(position)
    return @marks[position]
  end
  
  def canSetMarkAt?(position)
    return @positions.include?(position) and not @marks.include?(position)
  end
  
  def isLegalMark?(mark)
    return (mark == :X or mark == :O)
  end
  
  def setMark(position, mark)
    if self.isLegalMark?(mark) and self.canSetMarkAt?(position)
      @marks[position] = mark
    end
  end
  
end