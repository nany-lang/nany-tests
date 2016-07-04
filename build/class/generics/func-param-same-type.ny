class A
{
}

class Piko<:U:>
{
	func foo(ref obj: U)
	{
	}
}

public func main
{
	ref a = new A;
	ref p = new Piko<:A:>;
	p.foo(a);
}
