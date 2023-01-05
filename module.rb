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
end
