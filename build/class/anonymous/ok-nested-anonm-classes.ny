class A
{
	func makeview(predicate) -> new class
	{
		func accept(cref element)
			-> true;

		func empty -> false;

		func cursor -> new class
		{
			func findfirst: bool
				-> true;

			func valid -> true;

			func next: bool
			{
				index += 1;
				return index < limit;
			}

			func get -> index;

			ref limit = 10;
			ref index = 0;
		};
	};
}


public func main
{
	ref a = new A;

	ref l2 = new class {
		operator () -> true;
	};

	ref myview = a.makeview(l2);

	// each in (in a)
	if not myview.empty() then
	{
		ref cursor = myview.cursor();
		if cursor.findfirst() then
		{
			do
			{
				ref i = cursor.get();
				print("\(i)\n");
			}
			while cursor.next();
		}
	}
}
