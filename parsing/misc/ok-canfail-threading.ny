// This test is a remix of the fibonacci test with threading added

//! fibonacci (recursive way)
func fibonacci(n) : typeof(n)
{
	if n < 2 then
		return n;
	else
		return fibonacci(n - 1) + fibonacci(n - 2);
}

func main: int
{
	// Compute the result of `a` into another thread
	var a = & fibonacci(40);
	// Compute the result of `b` into another thread
	var b = & fibonacci(60);
	// Wait for the result of a and b, then compute a+b
	var c = a + b;
	// Print the result
	println("a + b = ", c);
	return 0;
}

