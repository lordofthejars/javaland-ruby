public abstract class IncludeProcessor extends Processor {

    public IncludeProcessor() {
        this(new HashMap<String, Object>());
    }
    
    public IncludeProcessor(Map<String, Object> config) {
        super(config);
    }

    public abstract boolean handles(String target);
    public abstract void process(PreprocessorReader reader, String target, Map<String, Object> attributes);
    
}

extensionProcessor.includeProcessor(new IncludeProcessor(new HashMap<String, Object>()) {
	//----
}
