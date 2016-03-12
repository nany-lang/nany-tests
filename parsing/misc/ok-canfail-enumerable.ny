

private class DoublyLinkedList
{
	var first: Node;
	var last: Node;

	view default
	{
		return new class
		{
			var i = first;

			property value read write i;

			func next
			{
				i = i.next;
			}
			func previous
			{
				i = i.previous;
			}
			func valid
			{
				return i != nil;
			}
		};
	}
} // class DoublyLinkedList

func main
{
	var l = new DoublyLinkedList;
	for i in l do
		io.out << i << io.eol;
	return 0;
}
