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


func foo(x) -> x;



public func main: any
{
	return foo(new A(new B(69))).y.ret;
}
