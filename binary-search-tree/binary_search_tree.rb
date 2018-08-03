module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

class Bst
  include Enumerable

  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end

  def insert(value)
    insert_left(value) if value <= @data
    insert_right(value) if value > @data
  end

  def each(&block)
    return enum_for(:each) unless block_given?

    left.each(&block) if left
    block.call(self.data)
    right.each(&block) if right
  end

  private

  def insert_left(value)
    if @left
      @left.insert(value)
    else
      @left = Bst.new(value)
    end
  end

  def insert_right(value)
    if @right
      @right.insert(value)
    else
      @right = Bst.new(value)
    end
  end
end
