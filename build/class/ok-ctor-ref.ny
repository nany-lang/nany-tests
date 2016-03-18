class A {
	operator new (ref piko)
	{
		x = piko;
	}
	ref x = 13;
}

public func main
{
	ref a = new A(10);
}
