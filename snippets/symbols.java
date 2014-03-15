//Ruby

@block_extensions = {:block => class}
def find_block_extension name
      @block_extensions[name]
end

//Java

String blockName = "block";

this.asciidoctorModule.find_block_extension(
			RubySymbol.newSymbol(rubyRuntime, blockName));
