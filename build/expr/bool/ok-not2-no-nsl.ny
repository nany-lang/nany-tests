class A
{
	func valid: __bool -> true;
}

public func main
{
	ref c = new A;
	var b2: __bool = c.valid();
	var b3: __bool = not c.valid();
}
