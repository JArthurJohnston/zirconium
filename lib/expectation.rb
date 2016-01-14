module Zirconium

  class Expectation
    attr_reader :method_symbol,
                :return_value,
                :arguments_passed_in

    def initialize expected_method_symbol
      @method_symbol = expected_method_symbol
      @was_called = false
      @arguments_passed_in = []
    end

    def to_return an_object
      @return_value = an_object
    end

    def called?
      @was_called
    end

    def called_with? *args
      @was_called and @arguments_passed_in.eql?(args)
    end

    def is_being_called_with list_of_args
      @arguments_passed_in = list_of_args
      @was_called = true
      @return_value
    end

    def == other_expectation
      @method_symbol == other_expectation.method_symbol
    end

    def eql? other_expectation
      self == other_expectation
    end

    def hash
      @method_symbol.hash
    end

  end

end