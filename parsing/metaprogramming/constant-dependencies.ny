
const bar = if nyo then "truc" else "muche";

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
