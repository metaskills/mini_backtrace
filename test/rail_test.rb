require 'test_helper'

class RailsTest < MiniTest::Spec
  
  before do
    @cleaner = Rails.backtrace_cleaner
  end
  
  after do
    @cleaner.remove_silencers!
    @cleaner.remove_filters!
  end
  
  it 'load rails' do
    @cleaner.must_be_instance_of Rails::BacktraceCleaner
  end
  
  it 'should use rails backtrace silencer' do
    @cleaner.add_silencer { |line| line =~ /noisy/ }
    noisy_traces = ["gems/noisy-4.2.0/lib/noisy.rb", "gems/noisy-4.2.0/lib/cricket.rb"]
    good_traces = ["test/rail_test.rb"]
    bt = noisy_traces + good_traces
    MiniTest.filter_backtrace(bt).must_equal good_traces
  end
  
  
end

