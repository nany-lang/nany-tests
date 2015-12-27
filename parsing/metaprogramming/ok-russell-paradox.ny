
class M {}

class HasElement(U, V)
{
	class const value = false;
}

class HasElement(U = M, V)
{
	class const value = not HasElement(V, V).value;
}

func main
{
	console << HasElement(M, M).value;
}

