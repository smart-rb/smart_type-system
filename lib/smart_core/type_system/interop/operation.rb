# frozen_string_literal: true

# @abstract
# @api private
# @since 0.1.0
class SmartCore::TypeSystem::Interop::Operation
  # @param type [SmartCore::TypeSystem::Interop::Type]
  # @return [void]
  #
  # @api private
  # @since 0.1.0
  def initialize(type)
    @type = type
  end

  # @param value [Any]
  # @return [void]
  #
  # @api private
  # @since 0.1.0
  def call(value)
  end

  private

  # @return [SmartCore::TypeSystem::Interop::Type]
  #
  # @api private
  # @since 0.1.0
  attr_reader :type
end
