# frozen_string_literal: true

# @abstract
# @api private
# @since 0.1.0
class SmartCore::TypeSystem::Interop::AbstractFactory
  class << self
    # @param type [Any]
    # @return [SmartCore::TypeSystem::Interop]
    #
    # @api private
    # @since 0.1.0
    def create(type)
      prevent_incompatible_type!(type)

      valid_op = build_op_valid(type)
      validate_op = build_op_validate(type)
      cast_op = build_op_cast(type)

      build_interop(valid_op, validate_op, cast_op)
    end

    # @return [Any]
    #
    # @api private
    # @since 0.1.0
    def generic_type_object; end

    # @param type [Any]
    # @return [void]
    #
    # @api private
    # @since 0.1.0
    def prevent_incompatible_type!(type); end

    private

    # @param type [Any]
    # @return [SmartCore::TypeSystem::Interop::Operation]
    #
    # @api private
    # @since 0.1.0
    def build_op_valid(type); end

    # @param type [Any]
    # @return [SmartCore::TypeSystem::Interop::Operation]
    #
    # @api private
    # @since 0.1.0
    def build_op_validate(type); end

    # @param type [Any]
    # @return [SmartCore::TypeSystem::Interop::Operation]
    #
    # @api private
    # @since 0.1.0
    def build_op_cast(type); end

    # @param valid_op [SmartCore::TypeSystem::Interop::Operation]
    # @param validate_op [SmartCore::TypeSystem::Interop::Operation]
    # @param cast_op [SmartCore::TypeSystem::Interop::Operation]
    # @return [SmartCore::TypeSystem::Interop]
    #
    # @api private
    # @since 0.1.0
    def build_interop(op_valid, op_validate, op_cast); end
  end
end
