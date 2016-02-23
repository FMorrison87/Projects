#99 Bottles of Beer 
BeerNumber = 99

while BeerNumber != 95
	puts BeerNumber.to_s + ' bottles of beer on the wall! ' + BeerNumber.to_s + ' bottles of beer! Take one down, pass it around, ' + (BeerNumber-1).to_s + ' bottles of beer on the wall!'
	BeerNumber = BeerNumber-1
end

