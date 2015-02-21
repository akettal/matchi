module Matchi
  # **Identity** matcher.
  class Equal < BasicObject
    # Initialize the matcher with an object.
    #
    # @example The number 42 matcher
    #   Matchi::Equal.new(42)
    #
    # @param [#equal?] expected an expected object
    def initialize(expected)
      @expected = expected
    end

    # @example Is it equal to :foo?
    #   equal = Matchi::Equal.new(:foo)
    #   equal.matches? { :foo } # => true
    #
    # @return [Boolean] Comparison between actual and expected values.
    def matches?
      @expected.equal?(yield)
    end
  end
end
