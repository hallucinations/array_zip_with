class Array
  def zip_with(*args)
    return zip(*args).map(&Proc.new) if block_given?
    operator = args.pop
    raise ArgumentError, "A block or symbol \
        must be provided" unless Symbol === operator
    zip(*args).map { |elems| elems.reduce(operator)}
  end
end
