class A
{
	func foo: ref any
	{
		ref x = 21;
		return new class {
			func cursor -> x * 2;
		};
	}
}

public func main
{
	ref a = new A;
	return a.foo().cursor();
}
