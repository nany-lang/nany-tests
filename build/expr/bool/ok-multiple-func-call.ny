class A
{
	func valid: __bool -> __true;
}

public func main
{
	ref c = new A;
	var b2: __bool = c.valid();
	var b3: __bool = c.valid();
	var b4: __bool = c.valid();
	var b5: __bool = c.valid();
	var b6: __bool = c.valid();
	var b7: __bool = c.valid();
}


