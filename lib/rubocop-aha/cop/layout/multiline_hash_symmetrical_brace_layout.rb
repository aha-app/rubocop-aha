require_relative '../../mixin/multiline_literal_symmetrical_brace_layout'

module RuboCop
  module Cop
    module Layout
      class MultilineHashSymmetricalBraceLayout < Cop
        include MultilineLiteralSymmetricalBraceLayout

        START_LINE_MESSAGE = 'Opening hash brace must be followed by ' \
          'a new line.'.freeze
        ALWAYS_NEW_LINE_MESSAGE = 'Closing hash brace must be on the line ' \
          'after the last hash element.'.freeze
        NEW_LINE_MESSAGE = 'Closing hash brace must be on the line ' \
          'after the last hash element.'.freeze

        def self.autocorrect_incompatible_with
          [Style::BracesAroundHashParameters]
        end

        def on_hash(node)
          check_brace_layout(node)
        end
      end
    end
  end
end
