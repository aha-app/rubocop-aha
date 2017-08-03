module RuboCop
  module Cop
    # Common functionality for checking the closing brace of a literal is
    # symmetrical and on a new line.
    module MultilineLiteralSymmetricalBraceLayout
      include MultilineLiteralBraceLayout

      def autocorrect?
        false
      end

      private

      def check(node)
        # Check both symmetrical and new_line from parent.
        check_symmetrical(node)
        check_new_line(node)
      end

      def check_symmetrical(node)
        if opening_brace_on_same_line?(node)
          return if closing_brace_on_same_line?(node)

          add_offense(node, :expression, self.class::START_LINE_MESSAGE)
        else
          return unless closing_brace_on_same_line?(node)

          add_offense(node, :end, self.class::NEW_LINE_MESSAGE)
        end
      end
    end
  end
end
