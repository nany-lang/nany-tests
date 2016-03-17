class A {
	operator new (self x);
	var x = 13__i32;
}

public func main
{
	ref x10 = 10;
	ref a = new A(x10);
	assert(a.x == 10);
}
