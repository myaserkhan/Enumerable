require_relative 'module'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end
end

list = MyList.new(1, 2, 3, 4)
puts(list.all? { |e| e < 5 })
