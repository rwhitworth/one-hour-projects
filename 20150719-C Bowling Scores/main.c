#include <assert.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char **argv)
{
	int a = 0;
	int result = 0;
	// char s[35] = "01 01 01 01 01 01 01 01 01 01";
	char s[35] = "81 X 01 01 01 01 01 01 01 01";
	#define array_len 11
	int score_array[array_len]; // 11 = spare ; 12 = strike
	int loc = 0;
	int sizeof_s = sizeof(s);
	assert(sizeof_s > 10); // 9 x strike and spare on last frame == 11 characters
	char single = "";
	int final_score = 0;

	//result = sscanf("0xa", "%i", &a);
	//printf("%x\n", a);
	//result = sprintf(&s, "%x", a);
	//printf("%s\n", s);

	for (int i = 0; i < array_len; i++)
	{
		score_array[i] = 0;
	}

	for (int i = 0; i < sizeof_s; i++)
	{
		if (s[i] == '\0') { break; }
		if (s[i] == ' ') { loc++; continue; }
		if (s[i] == 'X' || s[i] == 'x') { score_array[loc] = 12; loc++; continue; }
		if (s[i] == '/') { score_array[loc] = 11; loc++; continue; }
		a = 0;
		single = s[i];
		result = sscanf(&single, "%i", &a);
		if (result == 1)
		{
			assert(a < 10);
			assert(a > 0);
			score_array[loc] += a;
			assert(score_array[loc] < 10);
		}
	}

	for (int i = 0; i < array_len; i++)
	{
		if (score_array[i] == 12)
		{
			final_score += score_array[i + 1];

		}
		final_score += score_array[i];
	}

	return 0;
}