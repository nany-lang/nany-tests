class A
{
	operator new (self y) {}
	var y = 12;
}

public func main: any
{
	return (new A(42)).y;
}
