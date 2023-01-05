module MyEnumerable
  def list
    @list ||= []
  end

  def all?
    ary = []
    list.each do |i|
      ary.push(i) if yield i
    end
    ary.length == list.length
  end

  def any?
    each do |i|
      return true if yield(i)
    end
    false
  end

  def filter
    result = []
    each do |i|
      result << i if yield(i)
    end
    result
  end
end