require 'zirconium/version'
require_relative '../lib/zirconium/mocks/mock_object'
require_relative '../lib/zirconium/mocks/method_stub'
require_relative '../lib/zirconium/mocks/anything'

module Zirconium
  # Your code goes here...

  def create_mock class_to_mock = nil
    MockObject.new(class_to_mock)
  end

  def stub_method symbol
    MethodStub.new symbol
  end

end
