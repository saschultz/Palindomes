require('rspec')
require('palindromes')

describe('String#palindromes') do
  it('will compare a two letter word') do
    expect(("aa").palindromes()).to(eq(true))
  end
end
