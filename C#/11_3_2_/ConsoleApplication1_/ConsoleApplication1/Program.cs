using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class Program
    {
        /*    class Test
            {
                public int Power(int x)
                {
                    return x * x;
                }
            }
            static void Main(string[] args)
            {
                Test test = new Test();
                Console.WriteLine(test.Power(10));
                Console.WriteLine(test.Power(20));
            }*/

        /*class Test
   {
       public int Muti(int x, int y)
       {
           return x * y;
       }
   }
    static void Main(string[] args)
    {
        Test test = new Test();
        Console.WriteLine(test.Muti(52,273));
        Console.WriteLine(test.Muti(103,32));
    }*/

        /*class Test
        {
            public void Print()
            {
                Console.WriteLine("Print()메서드가 호출 되었습니다.");
            }
        }
        static void Main(string[] args)
        {
            Test test = new Test();
            test.Print();
            test.Print();
            test.Print();
        }*/

        /*class Test
        {
            public int Sum(int min, int max)
            {
                int output = 0;
                for (int i = min; i <= max; i++)
                {
            output += i;
            }
        return output;
        }
}
        static void Main(string[] args)
        {
            Test test = new Test();
    Console.WriteLine(test.Sum(1, 100));
        }*/

        /*class Test
        {
            public long Sum(int min, int max)
            {
                int output = 0;
                for (int i = min; i <= max; i++)
                {
                    output += i;
                }
                return output;
            }

            public long Multiply(int min, int max)
            {
                long output = 1;
                for (int i = min; i <= max; i++)
                {
                    output *= i;
                }
                return output;
            }
        }
        static void Main(string[] args)
        {
            Test test = new Test();
            Console.WriteLine(test.Sum(1, 100));
            Console.WriteLine(test.Multiply(1, 10));
        }*/

        class MyMath
        {
            public static int Abs(int input)
            {
                if (input < 0)

                    return -input;

                else

                    return input;
            }
        }

            static void Main(string[] args)
            {
                Console.WriteLine(MyMath.Abs(52));
                Console.WriteLine(MyMath.Abs(-273));
            }
        }
    }
