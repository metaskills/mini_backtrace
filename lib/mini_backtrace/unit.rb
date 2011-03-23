module MiniTest
  
  def self.filter_backtrace_with_rails(bt)
    filter_backtrace_without_rails(Rails.backtrace_cleaner.clean(bt))
  end
  
  class << self
    alias :filter_backtrace_without_rails :filter_backtrace
    alias :filter_backtrace :filter_backtrace_with_rails
  end
  
  
end
