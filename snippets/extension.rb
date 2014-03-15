require 'asciidoctor'
require 'asciidoctor/extensions'
require 'uri-open'

class UriIncludeProcessor < Asciidoctor::Extensions::IncludeProcessor
  def handles? target
    target.start_with?('http://') or target.start_with?('https://')
  end

  def process reader, target, attributes
    content = open(target).readlines
    reader.push_include content, target, target, 1, attributes
  end
end

Asciidoctor::Extensions.register do |document|
  include_processor UriIncludeProcessor.new
end
