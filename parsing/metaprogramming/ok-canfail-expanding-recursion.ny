
class InfRec(type)
{
	// unsupported feature in bootstrap
	class const value = InfRec(InfRec(type)).value;
}
