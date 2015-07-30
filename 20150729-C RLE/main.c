#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>

int main()
{
	char input[] = "AAAAAAAAAABBBBBBBBBBBBBBBCCC";
	//char input[] = "AAABCCD";
	char c = "";
	int c_len = strlen(input);
	int rle_count = 1;

	printf("c_len: %d\n", c_len);

	if (c_len > 1)
	{
		c = input[0];
		for (int i = 1; i <= c_len; i++)
		{
			//printf("i: %d", i);
			if (c != input[i] || i == c_len)
			{
				if (rle_count > 2)
				{
					printf("%d%c", rle_count, c);
					// output #A
				}
				if ((rle_count > 0) && (rle_count <= 2))
				{
					// output A or AA
					for (int j = 0; j < rle_count; j++)
					{
						printf("%c", c);
					}
				}
				rle_count = 1;
				c = input[i];
			}
			else
			{
				rle_count++;
			}
		}
		printf("\n");
	}
	else
	{
		printf("input string not long enough.  Exiting without doing anything.\n");
	}

	
	// code below this point not working 100% correctly :-(
	char decode[] = "10A15B3C";

	sscanf(decode, "%d", &rle_count);

	char *buf;
	buf = calloc(1, sizeof(char));

	for (int b = 0; b < strlen(buf); b++)
	{
		buf[b] = 0;
	}
	int res = snprintf(buf, 1, "%d", rle_count);
	free(buf);
	buf = calloc(res, sizeof(char));
	res = snprintf(buf, res, "%d", rle_count);
	memcpy(&decode, &decode[strlen(buf)], strlen(decode) - strlen(buf));


	getchar();
	return 0;
}