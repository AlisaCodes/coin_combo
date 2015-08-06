class Fixnum
  define_method(:coin_combo) do
    change = []

    quarters = self./(25)
    dimes = self.-(quarters.*(25))./(10)
    nickels = self.-(quarters.*(25)).-(dimes.*(10))./(5)

    change = [quarters, dimes, nickels]

  end
end
