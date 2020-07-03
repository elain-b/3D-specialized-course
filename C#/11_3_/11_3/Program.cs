using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _11_3
{
    class Program
    {
        class student
        {
            public string name;
            public int grade;
        }

        static void Main(string[] args)
        {
            /*int[,] m = { { 1, 2, 3 }, { 4, 5, 6 }, { 7, 8, 9 } };
            for (int i = 0; i < 3; i++)
            {
                for (int j = 0; j < 3; j++)
                    Console.Write("m[" + i + "," + j + "]="+ m[i,j]+"  ");
                Console.WriteLine();
            }
          
            for (int i = 0; i < 3; i++) 
            {
                for (int j = 0; j < 3; j++)
                     Console.Write("m[{0},{1}] = {2} ", i, j, m[i,j]);
                     Console.WriteLine();
            }*/

            /*int n, s = 0, i;
            for (;;)
            {
                Console.Write("Enter a number : ");
                n = int.Parse(Console.ReadLine());
                if (n == 0) break;
                else if (n < 0) continue;

                for (i = 1; i <= n; ++i)
                {
                    s = sum(s, i);
                }
            }
            Console.WriteLine("Total : n={0}, sum = {1}", n, s);
        }
        static int sum(int s, int i)
        {
            return s + i;*/

            /*Random random = new Random();
            Console.WriteLine(random.NextDouble()*10);
            Console.WriteLine(random.NextDouble());
            Console.WriteLine(random.Next());
            Console.WriteLine(random.Next());
            Console.WriteLine(random.Next());*/

            /*List<int> list = new List<int>(); 

            list.Add(52);
            list.Add(273);
            list.Add(32);
            list.Add(64);

            foreach(var item in list)
            {
                Console.WriteLine("conunt: " + list.Count + "\titem: " + item);
            }
            list.Remove(52);
            foreach (var item in list)
            {
                Console.WriteLine("conunt: " + list.Count + "\titem: " + item);
            }*/

            /*Console.WriteLine(Math.Abs(-52273));
            Console.WriteLine(Math.Ceiling(52.273));
            Console.WriteLine(Math.Floor(52.273));
            Console.WriteLine(Math.Max(52,273));
            Console.WriteLine(Math.Min(52,273));
            Console.WriteLine(Math.Round(52.273));*/

            /*product productA = new product() { name = "감자", price = 1000 };
            product productB = new product() { name = "고구마", price = 2000 };
            product productC = new product() { name = "배추", price = 1500 };

            /*product.name = "감자";
            product.price = 1000;*/

            /*Console.WriteLine("p.name : {0}, price : {1}", productA.name, productA.price);
            Console.WriteLine("p.name : {0}, price : {1}", productB.name, productB.price);
            Console.WriteLine("p.name : {0}, price : {1}", productC.name, productC.price);*/

            List<student> list = new List<student>() {

            new student() { name = "윤인성", grade = 1 },
            new student() { name = "연하진", grade = 2 },
            new student() { name = "윤아린", grade = 3 },
            new student() { name = "윤명월", grade = 4 },
            new student() { name = "구지연", grade = 1 },
            new student() { name = "김연화", grade = 2 }
        };
            for (int i = list.Count -1; i>= 0 ; i--)
            {
                if(list[i].grade > 1)
                {
                    list.RemoveAt(i);
                }
            }
            foreach (var item in list)
            {
                Console.WriteLine(item.name + " : " + item.grade);
            }
        }
    }
}
       