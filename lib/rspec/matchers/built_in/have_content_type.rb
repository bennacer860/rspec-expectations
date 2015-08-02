module RSpec
  module Matchers
    module BuiltIn

      class HaveContentType < BaseMatcher
        # @api private
        # @return [String]
        def failure_message
          "\nexpected: #{expected_formatted}\n     got: #{actual_formatted}\n\n(compared using ==)\n"
        end

        # @api private
        # @return [String]
        def failure_message_when_negated
          "\nexpected: value != #{expected_formatted}\n     got: #{actual_formatted}\n\n(compared using ==)\n"
        end

        # @api private
        # @return [String]
        def description
          "eq #{expected_formatted}"
        end

      end

    end
  end
end
