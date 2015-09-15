
class Point
{
	func new(ax, ay)
	{
		x = ax;
		y = ay;
	}
	func distance(ax, ay) -> math.sqrt((x - ax)^2 + (y - ay)^2);

	var x;
	var y;
}


func main
{
	var a = new Point(3, 1);
	var list = new Point[];
	list += new Point(2, 1);
	list += new Point(4, 6);
	list += new Point(10, 12);

	// partitioning
	var sum += switch (each in list).distance(a) on {
		case [ 0 .. 3  [  : 1;
		case [ 3 .. 10 ]  : 2;
		default           : 0;
	};
	return 0;
}
