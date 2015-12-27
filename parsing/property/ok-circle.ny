
class Circle
{
published:
	//! Radius
	var radius = 1f32;

public:
	//! Diameter
	var diameter
		-> { get: radius * 2, set: radius = value / 2 };

	//! Surface Area
	var area
		-> { get: std.math.pi * radius * radius, set: radius = std.math.sqrt(value / math.pi) };
}
