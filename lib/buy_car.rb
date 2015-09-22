class Vehicle
  define_method(:initialize) do |make, model, year|
    @make = make
    @year = year
    @model = model
  end

  define_method(:age) do
    current_year = Time.new().year()
    age = current_year.-(@year)
  end

  define_method(:worth_buying?) do
    american_cars = ["Chrysler", "Ford", "GM", "Chevrolet", "Cadillac", "Buick", "Dodge", "Jeep", "Tesla", "Pontiac"]
    american = american_cars.include?(@make)
    new_enough = age().<=(15)
    american.&(new_enough)
    if american.&(new_enough) == true
      return "Yes, buy this car!"
    else
      return "No, don't buy this car!"
    end
  end
end
