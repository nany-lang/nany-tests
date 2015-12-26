class A
{
	operator new (self y, self z) {}
	var y = 42;
	var z = 72;
}

public func main: any
{
	return (new A(1, 2)).z;
}
