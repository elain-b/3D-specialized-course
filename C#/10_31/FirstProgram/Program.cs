using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FirstProgram
{
    class Program
    {
        static void Main(string[] args)
        {
            /*Console.WriteLine("Hello World");

            //Console.Write("Write");
            Console.WriteLine("WriteLine");

            Console.Write("WriteLine");
            Console.WriteLine("WriteLine");

            Console.Write("Write");
            Console.WriteLine("Write");

            Console.WriteLine("가나다" + "라마" + "바사아" + "자차카타" + "파하");

              Console.WriteLine("int.MaxValue");
              Console.WriteLine("int.MinValue");

              Console.WriteLine("long.MaxValue");
              Console.WriteLine("long.MinValue");

              Console.WriteLine(123456+65432l);

              Console.WriteLine(123456 + 65432L);

              Console.WriteLine("int: "+ sizeof(int));
              Console.WriteLine("long: " + sizeof(long));
              Console.WriteLine("float: " + sizeof(float));
              Console.WriteLine("double: " + sizeof(double));
              Console.WriteLine("char: " + sizeof(char));*/

            String INCH = Console.ReadLine();
            float CM = float.Parse(INCH) * 2.54F;
            Console.WriteLine(INCH + "INCH 는" + CM +"cm이다");
            Console.WriteLine("");

            String KG = Console.ReadLine();
            float Pound = float.Parse(KG) * 2.20462262F;
            Console.WriteLine(KG + "KG 는" + Pound + "Pund이다");
            Console.WriteLine("");

            String R = Console.ReadLine();
            float Round = 2f * 3.141592f * float.Parse(R);
            Console.WriteLine(R + "반지름은" + Pound + "둘레다");
            Console.WriteLine("");
        }

    }
}
