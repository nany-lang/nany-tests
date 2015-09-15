
class Rect {func draw {} }

func main
{
	var l = unify[];
	l.add(new class {func draw {}});
	l.add(new Rect);
	(each in l).draw;
	return 0;
}
