# C / .Net DLL Interop

This project includes:
* DLL written in C (using <a href="https://github.com/nothings/stb">STB</a> library as the basis).
* Win32 console application that calls the DLL

The DLL exposes the following functions:
* void DisplayHelloFromDLL()
* int32_t is_prime(uint32 a)
* int fileexists(char* filename)
* uint32 crc32(char* buffer, uint32 len)

The C# code handles marshalling for the char* array for filename to expose a string.  It also handles configuring the calling convention of cdecl that is required.

All code in the C DLL and C# console application is licensed to the public domain, in the same manor as the STB library that is used.

STB must be retrieved from https://raw.githubusercontent.com/nothings/stb/master/stb.h
