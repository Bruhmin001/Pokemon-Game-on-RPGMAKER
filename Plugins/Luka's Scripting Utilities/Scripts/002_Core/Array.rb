#===============================================================================
#  Extensions for the `Array` data types
#===============================================================================
class ::Array
  #-----------------------------------------------------------------------------
  #  swaps specific indexes
  #-----------------------------------------------------------------------------
  def swap_at(index1, index2)
    val1 = self[index1].clone
    val2 = self[index2].clone
    self[index1] = val2
    self[index2] = val1
  end
  #-----------------------------------------------------------------------------
  #  pushes value to last index
  #-----------------------------------------------------------------------------
  def to_last(val)
    delete(val) if include?(val)
    push(val)
  end
  #-----------------------------------------------------------------------------
  #  check if index is last
  #-----------------------------------------------------------------------------
  def last?(index)
    (length - 1).eql?(index)
  end
  #-----------------------------------------------------------------------------
  #  check if part of string matches
  #-----------------------------------------------------------------------------
  def string_include?(val)
    return false unless val.is_a?(String)

    each do |a|
      return true if a.is_a?(String) && val.include?(a)
    end

    false
  end

  def value(index)
    self[index]
  end
  #-----------------------------------------------------------------------------
  #  returns value if blank or present
  #-----------------------------------------------------------------------------
  def blank?
    empty?
  end

  def present?
    !blank?
  end
  #-----------------------------------------------------------------------------
end
