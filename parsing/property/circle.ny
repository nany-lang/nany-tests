
class Circle
{
published:
	//! Radius
	var radius: float64 | radius > 0 = 1;

public:
	//! Diameter
	var diameter
		-> { get: radius * 2, set: radius = value / 2 }

	//! Surface Area
	var area
		-> { get: math.pi * radius^2, set: radius = math.sqrt(value / math.pi) }
}

