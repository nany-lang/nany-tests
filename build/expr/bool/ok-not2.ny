class A
{
	func valid: bool -> true;
}

public func main
{
	ref c = new A;
	var b2: bool = c.valid();
	var b3: bool = not c.valid();
}

