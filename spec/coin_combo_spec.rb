require('rspec')
require('pry')
require('coin_combo')

describe("Fixnum#coin_combo") do

  it("divides input by 25 and returns answer without remainder") do
    expect((99).coin_combo()).to(eq(3))
  end

end
