# @author Vasanth Balakrishnan <vasantheb@gmail.com>
class Array
  # @overload zip_with(*args, &block)
  #    Zips the input arrays with `self` and invokes block with the elements
  #    of the zipped array.
  #    @param [Array] args One or more arrays
  #    @example With one input array
  #       a = [1, 2, 3]
  #       a.zip_with([3, 2, 1]) { |x, y| x + y } # => [4, 4, 4]
  #    @example With multiple input arrays
  #       a = [1, 2, 3]
  #       a.zip_with([4, 5, 6], [7, 8, 9]) do |x, y, z|
  #         y - x * z
  #       end # => [21, 24, 27]
  #    @return [Array]
  # @overload zip_with(*args, operator)
  #    Zips the input arrays with `self` and reduces the zipped array with
  #    the +:operator+
  #    @param [Array] args One or more arrays
  #    @param [Symbol] operator Operator to reduce the zipped array with
  #    @example With one input array
  #       a = [1, 2, 3]
  #       a.zip_with([3, 2, 1], :+) { |x, y| x + y } # => [4, 4, 4]
  #    @example With multiple input arrays
  #       a = [1, 2, 3]
  #       a.zip_with([4, 5, 6], [7, 8, 9], :+) # => [12, 15, 18]
  #    @return [Array]
  # @raise [ArgumentError] If there is no symbol or a block as the last
  #   parameter.
  def zip_with(*args)
    return zip(*args).map(&Proc.new) if block_given?
    operator = args.pop
    raise ArgumentError, "A block or symbol \
        must be provided" unless operator.is_a?(Symbol)
    zip(*args).map { |elems| elems.reduce(operator) }
  end
end
