// Sample implementation for a generic singly linked list

private class SList(T)
{
public:
	property next = nil;
	property data: T;

	func new
	{
		// :data takes default value of T
		// :next takes nil
	}

	func prepend(n)
	{
		var oldData = :data;
		var oldNext = :next;
		:data = n;
		:next = new SList;
		:next.next = oldNext;
		:next.data = oldData;
	}

	func append(n)
	{
		if not :next then
		{
			:next = new SList;
			:next.data = n;
		}
		else
			:next.append(n);
	}

	func count -> if not :next then 0 else (1 + :next.count())


	func print
	{
		io.out << :data << io.eol;
		:next.print;
	}

} // class SList


func testList
{
	var l = new SList; // Here, the type parameter is not yet known
	l.append(42); // Here, we understand that the type is `int`
	l.prepend("Coucou"); // OK, the inferred type for T is a subtype of `int` and `string`
	io.out << "List contains " << l.count << " elements." << io.eol;
	l.prepend(new class {}); // Error ! `io.out` does not define operator << for this anonymous class
	l.print;
}
