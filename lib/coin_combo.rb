class Fixnum
  define_method(:coin_combo) do
    change = ""

    quarters = self./(25).to-s
    dimes = self.-(quarters.*(25))./(10).to-s
    nickels = self.-(quarters.*(25)).-(dimes.*(10))./(5).to-s
    pennies = self.-(quarters.*(25)).-(dimes.*(10)).-(nickels.*(5))./(1).to-s

    if quarters == "1"
      quarters.concat(" quarter")
    else
      quarters.concat(" quarters")
    end

  end
end
