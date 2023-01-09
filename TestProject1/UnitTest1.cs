using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.IO;
using System;

public class UnitTest1
{
    private const string Expected = "Hello everyone, Welcome  to the DevOps World everyone!!";
    [TestMethod]
    public void TestMethod1()
    {

        using (var sw = new StringWriter())
        {
            Console.SetOut(sw);
            ConsoleApp2.Program.Main();

            var result = sw.ToString().Trim();
            Assert.AreEqual(Expected, result);
        }
    }
}

