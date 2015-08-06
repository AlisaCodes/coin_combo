class Fixnum
  define_method(:coin_combo) do
    change = []

    quarters = self./(25)
    dimes = self.-(quarters.*(25))./(10)

    change = [quarters, dimes]

  end
end
