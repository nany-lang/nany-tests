
func infinite (a, b)
{
	return func (a, b)
	{
		return infinite(a, b);
	};
}
