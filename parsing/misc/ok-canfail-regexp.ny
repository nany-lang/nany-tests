// Test for regular expression syntax

func name
{
	var s = "MyName";
	return s;
}

func main
{
	return if name ~ "[a-zA-Z]+/i" then 0 else 1;
}
