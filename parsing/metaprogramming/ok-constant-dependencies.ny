
const bar = if nyo then "foo-text" else "bar-text";

const nyo = false;


func foo(a: T, b: T)
{
	typedef T: if bar == "muche" then int else any;
	var c = a + b;
	return c;
}


func main
{
	console << foo(1, 2);
}
