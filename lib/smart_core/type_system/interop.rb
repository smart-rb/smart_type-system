# frozen_string_literal: true

# @abstract
# @api private
# @since 0.1.0
class SmartCore::TypeSystem::Interop
  require_relative 'interop/operation'
  require_relative 'interop/abstract_factory'

  # @param op_valid [SmartCore::TypeSystem::Interop::Operation]
  # @param op_validate [SmartCore::TypeSystem::Interop::Operation]
  # @param op_cast [SmartCore::TypeSystem::Interop::Operation]
  # @return [void]
  #
  # @api private
  # @since 0.1.0
  def initialize(op_valid, op_validate, op_cast)
    @op_valid = op_valid
    @op_validate = op_validate
    @op_cast = op_cast
  end

  # @param value [Any]
  # @return [Any]
  #
  # @api private
  # @since 0.1.0
  def cast(value)
    op_cast.call(value)
  end

  # @return [Boolean]
  #
  # @api private
  # @since 0.1.0
  def valid?(value)
    op_valid.call(value)
  end

  # @return [Any]
  # @return [void]
  #
  # @api private
  # @since 0.1.0
  def validate!(value)
    op_validate.call(value)
  end

  private

  # @return [SmartCore::TypeSystem::Interop::Operation]
  #
  # @api private
  # @since 0.1.0
  attr_reader :op_valid

  # @return [SmartCore::TypeSystem::Interop::Operation]
  #
  # @api private
  # @since 0.1.0
  attr_reader :op_validate

  # @return [SmartCore::TypeSystem::Interop::Operation]
  #
  # @api private
  # @since 0.1.0
  attr_reader :op_cast
end
