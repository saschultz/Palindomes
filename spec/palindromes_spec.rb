require('rspec')
require('palindromes')

describe('String#palindromes') do
  it('will return false if a word is not a palindrome') do
    expect(("at").palindromes()).to(eq(false))
  end

  it('will compare a two letter word') do
    expect(("aa").palindromes()).to(eq(true))
  end

  it('will compare a three letter word') do
    expect(("pop").palindromes()).to(eq(true))
  end
end
