
func foo()
{
	var production : [-1..3, 2];
	production = [[1, 42], [7.3, 8], [15, 2.1], [34, 90]];
	console << production[0..production.size, 2] << console.eol;
	return 0;
}

func main
{
	var production: [-1..3, 2] = [[1, 42], [7.3, 8], [15, 2.1], [34, 90]];
	console << production[0..2, 2] << console.eol;
	return 0;
}
