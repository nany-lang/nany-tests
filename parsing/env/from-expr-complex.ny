
func main: int
{
	console << (each in $PATH.split(":;")) << '\n';
	console << (each in $["PATH"].split(":;")) << '\n';
}

