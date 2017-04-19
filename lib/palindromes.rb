class String
  define_method(:palindromes) do
    if self[0] == self[1]
      true
    else
      false
    end
  end
end
