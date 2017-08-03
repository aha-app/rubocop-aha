require_relative '../../mixin/multiline_literal_symmetrical_brace_layout'

module RuboCop
  module Cop
    module Layout
      class MultilineArraySymmetricalBraceLayout < Cop
        include MultilineLiteralSymmetricalBraceLayout

        START_LINE_MESSAGE = 'Opening array brace must be followed by ' \
          'a new line.'.freeze
        ALWAYS_NEW_LINE_MESSAGE = 'Closing array brace must be on the line ' \
          'after the last array element.'.freeze
        NEW_LINE_MESSAGE = ALWAYS_NEW_LINE_MESSAGE

        def on_array(node)
          check_brace_layout(node)
        end
      end
    end
  end
end
