module Decorators
    class CustomDecorator
      def initialize(object)
        @object = object
      end
  
      def decorated_method
        "Decorated #{@object.some_method}"
      end
    end
  end
  