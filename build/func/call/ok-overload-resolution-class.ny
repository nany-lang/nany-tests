
class B
{
	func foo(x):any
	{
		return 42;
	}
}


class A
{
	func foo(x: A)
	{
	}

	func foo(x: B)
	{
	}
}

class C
{
	func nyo() {
	}
}


func bar(y, x) -> x.foo(x);


func foo(p1: A)
{
	bar(x, x);
}

func foo(ref x: B)
	-> bar(x, x);



public func main: any
{
	var b = new B;
	return foo(b);
}
