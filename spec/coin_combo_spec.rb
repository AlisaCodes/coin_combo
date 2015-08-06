require('rspec')
require('pry')
require('coin_combo')

describe("Fixnum#coin_combo") do

  it("divides input by 25 and returns number of quarters necessary") do
    expect((75).coin_combo()).to(eq([3, 0]))
  end

  it("processes input and returns number of quarters and dimes necessary") do
    expect((95).coin_combo()).to(eq([3, 2]))
  end

end
