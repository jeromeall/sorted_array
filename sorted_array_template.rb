require './sorted_array_template.rb'


class SortedArray
  attr_accessor :internal_arr, :input_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    @internal_arr = []
    input_arr.each{|new_ele| add new_ele} # PLEASE EXPLAIN IN SECTION
    # Fill in the rest of the initialize method here.
    # What should you do with each element of the incoming array?
  end

  def add(new_ele)
    # Hint: Use the Array#insert method.
    @internal_arr.insert(first_larger_index(new_ele), new_ele)
  end

  def size
    @internal_arr.size
  end

  def [](index)
    @internal_arr[index]
  end

  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size)
    

    mid_ind = (start_ind+end_ind)/2
    if start_ind >= end_ind
       return end_ind
    elsif @internal_arr[mid_ind] == target
      return mid_ind
    elsif target < @internal_arr[mid_ind]
      return first_larger_index(target, start_ind, mid_ind)
    elsif target > @internal_arr[mid_ind]
      return first_larger_index(target,mid_ind+1, end_ind)
    end
  end

  def index(target)
    raise NotImplementedError.new("You need to implement the index method!")
  end
end
