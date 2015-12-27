
class SelfRev(type)
{
	class const value = SelfRev(type).value;
}
