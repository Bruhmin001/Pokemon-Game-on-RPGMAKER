#===============================================================================
#  Extensions for the `File` class
#===============================================================================
class ::File
  class << self
    #---------------------------------------------------------------------------
    #  checks for existing .rxdata file
    #---------------------------------------------------------------------------
    def safe_data?(file)
      load_data(file) ? true : false
    rescue
      false
    end
    #---------------------------------------------------------------------------
  end
end
