// This test uses type aliases

class Typedef
{
public:
	typedef A : Typedef;

	var k = 0;
}

typedef B : Typedef.A;


typedef F: func(a, b);

func main
{
	var f: F = func (a, b) -> a + b
	var b : B;
	b.k = f(1, 2);
	return b.k;
}
