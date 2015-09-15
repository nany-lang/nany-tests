

func isCardanoTriplet(triplet): bool
{
	const bc = (float64) triplet.b * std.math.sqrt((float64) triplet.c);
	const cardano = std.math.cbrt((float64) triplet.a + bc) + std.math.cbrt((float64) triplet.a - bc);
	// Floating point rounding errors…
	return (cardano < 1.000001 && cardano > 0.999999);
}


// brute force example
func howManyCardanoTriplets(limit): uint
{
	var count = 0;

	for a in [: 1.. limit - 2 :[ do
	{
		for b in [: 1.. limit - a - 1 :[ do
		{
			for c in [: 1.. limit - a - b :[ do
			{
				var triplet = {a: a, b: b, c: c};

				if isCardanoTriplet(triplet) then
				{
					++count;
					console << "\(count): \(triplet)" << console.eol;
				}
			}
		}
	}
	return count;
}


public func main: int
{
	howManyCardanoTriplets(1000);
	return 0;
}
