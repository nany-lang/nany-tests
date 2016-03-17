public func main
{
	var a = 2 + 3 * 2; // 8 and not 10
	var b = 2 + (3 * 2); // 8
	assert(a == b);

	var c = 3 * 2 + 2; // 8 and not 10
	var d = (3 * 2) + 2; // 8
	assert(c == d);
	assert(a == c);
	assert(a == d);
}
