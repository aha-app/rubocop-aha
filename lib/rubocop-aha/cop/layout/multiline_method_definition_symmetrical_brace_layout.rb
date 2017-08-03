require_relative '../../mixin/multiline_literal_symmetrical_brace_layout'

module RuboCop
  module Cop
    module Layout
      class MultilineMethodDefinitionSymmetricalBraceLayout < Cop
        include OnMethodDef
        include MultilineLiteralSymmetricalBraceLayout

        START_LINE_MESSAGE = 'Opening method definition brace must be ' \
          'followed by a new line.'.freeze
        ALWAYS_NEW_LINE_MESSAGE = 'Closing method definition brace must be ' \
          'on the line after the last parameter.'.freeze
        NEW_LINE_MESSAGE = ALWAYS_NEW_LINE_MESSAGE

        def on_method_def(_node, _method_name, args, _body)
          check_brace_layout(args)
        end
      end
    end
  end
end
