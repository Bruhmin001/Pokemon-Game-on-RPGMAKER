#===============================================================================
#  Extensions for the `Nil` data types
#===============================================================================
class ::NilClass
  #-----------------------------------------------------------------------------
  #  returns value if blank or present
  #-----------------------------------------------------------------------------
  def blank?
    true
  end

  def present?
    false
  end
  #-----------------------------------------------------------------------------
end
