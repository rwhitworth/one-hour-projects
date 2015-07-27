
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys\stat.h>

#define RAW 0
#define PARSED 1

// remove Visual Studio warnings about strtok being non-optimal
// http://stackoverflow.com/questions/16883037/remove-secure-warnings-crt-secure-no-warnings-from-projects-by-default-in-vis
// Alt-F7, All Configurations, C/C++, Preprocessor, Preprocessor Definitions, Edit, add '_CRT_SECURE_NO_WARNINGS' to the list

int main(int argc, char *argv[])
{
	//char str[80] = "--doit -h 'help me' --more 'long option' -q 3 -r filename.dat";
	int cmdline_size = 0;
	int result = 0;
	char *str;
	int opt_doit = 0;
	int opt_q = 0;
	int opt_r = 0;
	char *opt_h = NULL;
	char *opt_more = NULL;
	char *opt_filename = NULL;

	struct stat st;
	result = stat(argv[argc - 1], &st);
	if (result == 0) 
	{ 
		printf("File exists!\n");
		opt_filename = calloc(strlen(argv[argc - 1]) + 1, sizeof(char));
		if (opt_filename == NULL)
		{
			printf("Error allocating memory\n. Exiting.\n");
			exit(102);
		}
	}
	else
	{
		printf("File doesn't exist.  Exiting.\n");
		exit(100);
	}

	for (int i = 1; i < (argc - 1); i++)
	{
		cmdline_size += strlen(argv[i]) + 1;
	}
	str = calloc(cmdline_size + 1, sizeof(char));
	if (str == NULL)
	{
		printf("Error allocating memory\n. Exiting.\n");
		exit(101);
	}
	for (int i = 1; i < (argc - 1); i++)
	{
		strcat(str, argv[i]);
		strcat(str, " ");
	}

#if RAW == 1
	printf("\nNow printing raw argv array:\n");

	for (int i = 1; i < argc; i++)
	{
		printf("%d:%s\n", i, argv[i]);
	}
#endif

	printf("\nCommandline len: %d\n", cmdline_size);
	printf("str len: %d\n", strlen(str));
	
#if PARSED == 1
	printf("\nNow printing parsed array:\n");
#endif

	const char sep[] = "-";
	char *token;
	int counter = 1;

	token = strtok(str, sep);

	while (token != NULL)
	{
#if PARSED == 1
		printf("%d:%s\n", counter, token);
#endif
		char more[] = "more";
		result = strncmp(token, more, strlen(more));
		if (result == 0)
		{
			calloc(strlen(token) + 1, sizeof(char));
			// nope.  Calling strtok while using strtok causes problems.
			// ... strtok uses 'volatile' variables perhaps?
			//opt_more = strtok(token, " ");
			//opt_more = strtok(NULL, " ");
		}

		token = strtok(NULL, sep);
		counter++;
	}

	//printf("opt_more: %s\n", opt_more);



	getchar();

	return(0);
}