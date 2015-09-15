
func main
{
	if (var value = 3 + 7) != 0 then // scope of 'value': both then/else
		console << "success: " << value;
	else
		console << "failure: " << value;
}
