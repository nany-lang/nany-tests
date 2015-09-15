// Test for type parameters on both classes and functions

private class SListItem
{
public:
	//! Constructor with item value
	func new(value)
	{
		item = value;
	}

	var next: ref SListItem;
	var item;
}


class SList<T = any>
{
published:
	typedef Type;
	var head: ref -> {get: pHead, set: pHead = value }

public:
	func new
	{
	}

	func new
	{
		pHead = ref nil as T;
	}

	//! Get the nth item or nil if there are not enough items
	func get(n)
	{
		if pHead == nil or n < 0 then
			return nil;

		var current = pHead;
		while n > 0 and current != nil do
		{
			current = current.next;
			n--;
		}
		return current;
	}

	//! Add an item to the beginning of the list
	func prepend(item)
	{
		var queue = if pHead == nil then nil else pHead.next;
		pHead = new SListItem(Type, item);
		pHead.next = queue;
	}

	func addToEach(value)
	{
		(each in self) += value;
	}

	func print
	{
		console << "\t" << (each in self) << console.eol;
	}

	operator += (item)
	{
		append(item);
	}

	operator [] (index)
	{
		get(index);
	}

	operator + (list)
	{
		var tmp = self;
		for i in list do
			tmp += i;
		tmp;
	}

	//! Default enumerator
	view default -> new class
	{
		func value: ref -> i;

		func next
		{
			i = i.next;
		}

		func valid -> isnil(i);

	private
		var i: ref = pHead;
	}


private:
	var pHead: ref Type;

} // class SList



func main
{
	var l = new SList;
	l.prepend(24);
	l.prepend(12);
	l.addToEach(2);
	io.out << l << io.eol;
	l.get(1);

	var k = new SList;
	k.prepend("foo");

	var m = k + l;
	return 0;
}

