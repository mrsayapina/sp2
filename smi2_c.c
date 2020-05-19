#include <stdio.h>

int main(void)
{
        int arr[10] = { -2,2,1,3,6,1,-4,2,7,3 };
        int more = 0;
	int less = 0;
	int M = 5;
        for (int i = 0; i < 10; ++i)
        {
                if (arr[i] < M)
                	++less;
		if (arr[i] > M)
			more += arr[i];
        }
        printf("%d\n", more);
	printf("%d\n", less);
        return 0;
}
