#include <iostream>


int main()
{
	const int n = 1000;
	const int m = 1000;

	int j = 0;
	while (j < n)
	{
		int i = 0;
		while (i < m)
		{
			std::cout << " (" << i << ',' << j << ")\n";
			++i;
		}
		++j;
	}

	return 0;
}
