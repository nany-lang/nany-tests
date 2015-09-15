class A
{
}


func bar(y, x) -> 42;


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
