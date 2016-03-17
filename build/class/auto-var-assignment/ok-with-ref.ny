class A {
	operator new (self x);
	var x = 13;
}

public func main
{
	ref a = new A(10);
}
