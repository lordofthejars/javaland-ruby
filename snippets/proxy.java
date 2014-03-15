//Ruby
require 'java'
require 'asciidoctor'

class AsciidoctorModule	java_implements Java::AsciidoctorModuleClass
  def render_file(content, options = {})
    return Asciidoctor.render_file(content, options)
  end
  def render(content, options = {})
    return Asciidoctor.render(content, options)
  end
end

//Java
public interface AsciidoctorModuleClass {  
  Object render(String content, Map<String, Object> options);
  Object render_file(String filename, Map<String, Object> options);
}
Object rfj = evaler.eval(runtime, "AsciidoctorModuleClass.new()");

AsciidoctorModuleClass amc = JavaEmbedUtils.rubyToJava(runtime, (org.jruby.runtime.builtin.IRubyObject) rfj, AsciidoctorModuleClass.class);
