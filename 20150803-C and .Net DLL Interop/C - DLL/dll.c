#define STB_DEFINE
#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdint.h>
#include "stb.h"

#define DECL __declspec(dllexport)

#ifdef __cplusplus
extern "C"
{
#endif


DECL void DisplayHelloFromDLL()
{
	printf("Hello from C DLL !\n");
}

DECL int32_t is_prime(uint32 a)
{
	return stb_is_prime(a);
}

DECL int fileexists(char* filename)
{
	return stb_fexists(filename);
}

DECL uint32 crc32(char* buffer, uint32 len)
{
	return stb_crc32(buffer, len);
}

#ifdef __cplusplus
}
#endif
