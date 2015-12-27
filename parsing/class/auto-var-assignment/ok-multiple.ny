class A
{
	operator new (self y, self z) {}
	var y = 3;
	var z = 4;
}

public func main: any
{
	return (new A(1, 42)).z;
}
