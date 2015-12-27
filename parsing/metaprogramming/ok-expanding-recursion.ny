
class InfRec(type)
{
	class const value = InfRec(InfRec(type)).value;
}

