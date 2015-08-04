using System;
using System.Runtime.InteropServices;

namespace DotNet_ConsoleApplication
{
    class Program
    {
        const string STB_DLL = "Win32Project1.dll";
        [DllImport(STB_DLL, CallingConvention = CallingConvention.Cdecl)]
        public static extern void DisplayHelloFromDLL();
        [DllImport(STB_DLL, CallingConvention = CallingConvention.Cdecl)]
        public static extern Int32 is_prime(UInt32 a);
        [DllImport(STB_DLL, CallingConvention = CallingConvention.Cdecl)]
        public static extern Int32 fileexists(String filename);
        [DllImport(STB_DLL, CallingConvention = CallingConvention.Cdecl)]
        public static extern UInt32 crc32(char[] buffer, UInt32 len);


        static void Main(string[] args)
        {
            Console.WriteLine("Hello from C#");
            DisplayHelloFromDLL();
            for (UInt32 i = 0; i < 13; i++)
            {
                if (is_prime(i) == 1) { Console.WriteLine("{0} is prime", i); }
            }
            Console.WriteLine("File Exists: {0}", fileexists(STB_DLL));

            char[] b = "The quick brown fox jumps over the lazy dog".ToCharArray();
            var res = crc32(b, (UInt32)b.Length);
            // https://www.google.com/search?q=414fa339
            Console.WriteLine("{0:x}", res);

            Console.ReadLine();
        }
    }
}
