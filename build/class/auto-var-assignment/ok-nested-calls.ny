class B
{
	operator new {}
	operator new (self ret) {}
	var ret = 42;
}


class A
{
	operator new (self y) {}
	var y = new B;
}


public func main: any
{
	return (new A(new B(69))).y.ret;
}
