// This test checks a simple recursive program with no class, and simple math

//! \brief fibonacci (recursive way)
func fibonacci(n) : any
{
   if n < 2 then
       return n;
   return fibonacci(n - 1) + fibonacci(n - 2);
}

//! \brief fibonacci (recursive way)
func fibonacci2(n)
	-> if n < 2 then n else fibonacci(n - 1) + fibonacci(n - 2);


func main : int
{
	io.out << "fibonacci(10) = " << fibonacci(10) << io.eol;
	return 0;
}
