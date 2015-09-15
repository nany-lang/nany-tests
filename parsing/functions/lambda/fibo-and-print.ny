
func fibonacci(n) ->
	if n <= 2 then n else fibonacci(n - 1) + fibonacci(n - 2)

func print(n)
{
	io.out << fibonacci(n) << io.eol
}

