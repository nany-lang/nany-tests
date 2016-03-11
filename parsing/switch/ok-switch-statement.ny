// This test checks for a statement-case

func main : int
{
	var politeness = 2;
	// Statement case
	switch politeness on
	{
		case 3: { io.out << "Très poli" << io.eol; }
		case 0: { io.out << "Pas poli du tout" << io.eol; }
	}
	else
		io.out << "Politesse moyenne" << io.eol;

	return 0;
}
