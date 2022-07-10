#############################################################################
#####
##
## PROBLEM 5
## write an rspec suite for this class and function
##
#############################################################################
#####

#Solution:


require 'rspec'

class Widget
  def work(i)
    if i % 2 == 0
      if i % 5 == 0
        return :even_and_five
      else
        return :even
      end
    else
      return :odd
    end
  end
end

RSpec.describe Widget do
  describe '#work' do
    before do
      @w = Widget.new()
    end

    it 'is odd' do
      expect(@w.work(1)).to eq(:odd)
    end

    it 'is even' do
      expect(@w.work(2)).to eq(:even)
    end
    
    it 'is even_and_five ' do
      expect(@w.work(5)).to eq(:even_and_five)
    end
  end
end