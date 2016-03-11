

func foo(i)
{
	io.out << i + 1 << io.eol;
}

func main
{
	foo(each in [:0..6:[);
	return 0;
}
