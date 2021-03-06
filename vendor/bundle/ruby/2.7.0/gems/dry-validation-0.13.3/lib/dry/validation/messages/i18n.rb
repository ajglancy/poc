require 'i18n'
require 'dry/validation/messages/abstract'

module Dry
  module Validation
    class Messages::I18n < Messages::Abstract
      attr_reader :t

      ::I18n.load_path.concat(config.paths)

      def initialize
        super
        @t = I18n.method(:t)
      end

      def call(predicate, options = EMPTY_HASH)
        super do |path, opts|
          get(path, opts)
        end
      end
      alias_method :[], :call

      def get(key, options = {})
        t.(key, locale: options.fetch(:locale, default_locale)) if key
      end

      def rule(name, options = {})
        path = "rules.#{name}"
        get(path, options) if key?(path, options)
      end

      def key?(key, options)
        ::I18n.exists?(key, options.fetch(:locale, default_locale)) ||
        ::I18n.exists?(key, I18n.default_locale)
      end

      def merge(path)
        ::I18n.load_path << path
        self
      end

      def default_locale
        I18n.locale || I18n.default_locale || super
      end
    end
  end
end
