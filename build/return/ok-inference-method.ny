class A
{
	func foo: ref -> 10__i32;
}

public func main: any
{
	return (new A).foo();
}
