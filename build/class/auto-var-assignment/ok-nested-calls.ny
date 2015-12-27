class B
{
	operator new {}
	operator new (self ret) {}
	var ret = 69;
}


class A
{
	operator new (self y) {}
	var y = new B;
}


public func main: any
{
	return (new A(new B(42))).y.ret;
}
