class A
{
	operator new (self invalidname) {}
	var y = 42;
}

public func main: any
{
	return (new A(12)).y;
}
