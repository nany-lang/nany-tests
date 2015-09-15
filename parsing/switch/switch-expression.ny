// This test checks for an expression-case

func main : int
{
	var str = "Coucou";
	// Expression case
	var politeness = switch str on
	{
		case "Salutations": 3;
		case "Bonjour": 3;
		case "Coucou": 2;
		case "Salut": 1;
		default: 0;
	};
	return politeness;
}
