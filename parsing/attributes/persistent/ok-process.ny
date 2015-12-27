
class Foo
{
	func new
	{
		counter += 1;
	}

	func release
	{
		counter -= 1;
	}

	[[persistent]] var counter = 0
}

