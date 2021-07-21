# frozen_string_literal: true

require 'smart_core/types'

# @api public
# @since 0.1.0
module SmartCore
  # @api public
  # @since 0.1.0
  module TypeSystem
    require_relative 'type_system/version'
    require_relative 'type_system/errors'
    require_relative 'type_system/interop'
    require_relative 'type_system/smart_types'
  end
end
