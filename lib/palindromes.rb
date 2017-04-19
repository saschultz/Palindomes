class String
  define_method(:palindromes) do
    string_to_test = self.to_s
    length = string_to_test.length
    counted_length = length.to_f./(2).ceil()
    booleans_array = []
    index = 0

    while index <= counted_length do
      booleans_array.push(string_to_test[index].==(string_to_test[length.-(index.+(1))]))
      index += 1
    end

    if booleans_array.include?(false)
      false
    else
      true
    end

  end
end
