require 'action_view/helpers'

module Sprockets
  class WalrusTemplate < Tilt::Template

    def self.default_mime_type
      'application/javascript'
    end

    class << self
      attr_accessor :namespace
    end

    self.namespace = 'this.walrus_templates'

    def prepare
      @namespace = self.class.namespace
    end

    attr_reader :namespace

    def evaluate(scope, locals, &block)
      <<-JST
(function() {
#{namespace} || (#{namespace} = {});
#{namespace}[#{scope.logical_path.inspect}] = #{wrap_in_walrus_parser(data)};
}).call(this);
      JST
    end

    protected

    module JSHelper
      include ActionView::Helpers::JavaScriptHelper
      extend self
    end

    def wrap_in_walrus_parser(source)
      "Walrus.Parser.parse('%s')" % JSHelper.escape_javascript(source)
    end
  end

  register_engine '.wal', ::Sprockets::WalrusTemplate
end

