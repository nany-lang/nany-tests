// A func declaration and call with no type

func foo(a: ref, b: uint, c)
{
	a << b << c;
}

func main: int
{
	var s = "Plop";
	foo(s, 42, '@');
	return 0;
}
