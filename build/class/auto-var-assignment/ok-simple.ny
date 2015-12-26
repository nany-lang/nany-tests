class A
{
	operator new (self y) {}
	var y = 42;
}

public func main: any
{
	return (new A(12)).y;
}
