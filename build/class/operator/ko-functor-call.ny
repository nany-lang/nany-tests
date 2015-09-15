
class A
{
	func foo: ref -> new A;
}

public func main
{
	(new A).foo()();
}
