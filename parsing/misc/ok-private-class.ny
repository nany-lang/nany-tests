//! This test uses a file-private class with a nested enum

private class OptionalPunctuation
{
public:
	enum e
	{
		Value1,
		Value2
	}

	func foo(a): int
	{
		if a > 1 then
			if a < 4 then
				return a;
			else
				return foo(a - 1);
		else
			return foo(a + 1);
	}
}


func main()
{
	return 0;
}

