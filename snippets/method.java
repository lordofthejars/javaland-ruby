//Ruby block.rb
class Block < AbstractBlock
  def initialize(parent, context, opts = {})
  end
end

//Java
//Load Ruby script file
String scriptBlockClass = load("block.rb");
evaler.eval(runtime, scriptBlockClass);

//Load class
IRubyObject rubyClass = evaler.eval(runtime, "Block");

String context = ...;
Map<Object, Object> ops = ..;
Object[] parameters = new Object[]{ parent, context, ops };

//Parameters as Java types
JavaEmbedUtils.invokeMethod(runtime, rubyClass, "new", parameters, IRubyObject.class);
