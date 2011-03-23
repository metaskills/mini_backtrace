require 'bundler'
Bundler.setup
require 'mini_backtrace'
require 'minitest/spec'
require 'minitest/autorun'

# class MiniBacktrace::SpecCase < MiniTest::Spec
#   
#   class << self
#     
#     def class_helper?
#       true
#     end
#     
#   end
#   
#   def public_helper?
#     true
#   end
#   
#   
#   protected
#   
#   def protected_helper?
#     true
#   end
# 
# end
