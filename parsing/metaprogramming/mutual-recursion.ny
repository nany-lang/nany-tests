
class MutualRec(A, B)
{
	class const value = MutualRec(B, A).value;
}
