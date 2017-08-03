require_relative '../../mixin/multiline_literal_symmetrical_brace_layout'

module RuboCop
  module Cop
    module Layout
      class MultilineMethodCallSymmetricalBraceLayout < Cop
        include MultilineLiteralSymmetricalBraceLayout

        START_LINE_MESSAGE = 'Opening method call brace must be followed by ' \
          'a new line.'.freeze
        ALWAYS_NEW_LINE_MESSAGE = 'Closing method call brace must be on ' \
          'the line after the last argument.'.freeze
        NEW_LINE_MESSAGE = ALWAYS_NEW_LINE_MESSAGE

        def on_send(node)
          check_brace_layout(node)
        end

        private

        def children(node)
          node.arguments
        end

        def ignored_literal?(node)
          single_line_ignoring_receiver?(node) || super
        end

        def single_line_ignoring_receiver?(node)
          return false unless node.loc.begin && node.loc.end

          node.loc.begin.line == node.loc.end.line
        end
      end
    end
  end
end
