// Testing inheritance and automatic compliance for heterogeneous arrays

class Shape
{
	//! Surface area
	abstract func surface {}
}

class Rectangle : Shape
{
public:
	func new
	{
		width  = 50u;
		height = 50u;
	}

	func new(w, h)
	{
		width  = w;
		height = h;
	}

	func surface
	{
		return width * height;
	}

	operator = (copy)
	{
		width  = copy.width;
		height = copy.height;
	}

	//! Width of the rectangle
	var width;
	//! Height of the rectangle
	var height;
}


class Circle : Shape
{
public:
	func new
	{
		radius = 1.0;
	}

	func new(r)
	{
		radius = r;
	}

	func surface
	{
		return Math.pi * radius ^ 2;
	}

	//! Circle radius
	var radius;
}





func main
{
	var l = [
		new Rectangle(10, 200),
		new class
		{
			func surface { return "some strange text here"; }
		},
		new Circle ];

	for i in l do
		io.out << i.classname << ": " << i.surface << io.eol;
}
