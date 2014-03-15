Ruby rubyRuntime = JavaEmbedUtils.initialize(new ArrayList());
RubyRuntimeAdapter evaler = JavaEmbedUtils.newRuntimeAdapter();

RubyInteger  rfj = evaler.eval(runtime, "1+2");
evaler.eval(runtime, "puts 'Hello World'");
