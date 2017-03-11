using NUnit.Common;
using NUnitLite;
using System;
using System.IO;
using System.Reflection;

namespace CoreCompat.System.Drawing.Tests
{
    public class Program
    {
        public static int Main(string[] args)
        {
            var assembly = typeof(Program).GetTypeInfo().Assembly;

            Environment.CurrentDirectory = Path.GetDirectoryName(assembly.Location);

            return new AutoRun(assembly)
                .Execute(args, new ExtendedTextWrapper(Console.Out), Console.In);
        }
    }
}
