
public func main
{
	const n = 1000;
	const m = 1000;

	var j = 0;
	while j < n do
	{
		var i = 0;
		while i < m do
		{
			console << " (\(i),\(j))\n";
			++i;
		}
		++j;
	}
}
