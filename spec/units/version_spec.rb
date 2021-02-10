# frozen_string_literal: true

RSpec.describe 'Has a version' do
  specify { expect(SmartCore::TypeSystem::VERSION).not_to eq(nil) }
end
