def foo(bar, &block)
  callback = block
  callback.call(bar)
end

foo(5) {|x| x * x} # => 25

{ "x" => 1, "y" => 2, "z" => 3 }.each{ |k,v| puts "Key: #{k}, Value: #{v}" }
