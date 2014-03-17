class Money  
  attr_accessor :value  

  def self.method_missing(m, *args, &block)  
    if m.to_s =~ /^find_by_(.*)$/
    end
  end
  
  def +(b)
    result = dup
    result.value += b.value
    return result
  end
  
end

Money.findByCurrency(..)
