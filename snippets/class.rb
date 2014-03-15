 require 'asciidoctor' 
 class MyClass < Parent
    attr_accessor :foo
 
    def initialize
      @foo = 28
    end

    def has_more_lines?
    end

    def process_line line
    end

  end
 
  instance = MyClass.new
  puts instance.foo
  instance.foo = 496
