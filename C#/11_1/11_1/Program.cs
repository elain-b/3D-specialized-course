using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace _11_1
{
    class Program
    {
        static void Main(string[] args)
        {
            /*int[] intArray = { 52, 273, 32, 65, 103, };

            Console.WriteLine(intArray.Length);*/

            /*int i = 0;
            int[] intArray = { 52, 273, 32, 65, 103,100,20,28 };

            while (i < intArray.Length)
            {
                Console.WriteLine(i + "번째 출력:" + intArray[i]);

                i++;
            }*/
            /*String Y_N;
            do
            {
                Console.Write("태어난 년도:");
                int birth = int.Parse(Console.ReadLine());
                switch (birth % 12)
                {
                    case 0: Console.WriteLine("원숭이 띠입니다."); break;
                    case 1: Console.WriteLine("닭 띠입니다."); break;
                    case 2: Console.WriteLine("개 띠입니다."); break;
                    case 3: Console.WriteLine("돼지 띠입니다."); break;
                    case 4: Console.WriteLine("쥐 띠입니다."); break;
                    case 5: Console.WriteLine("소 띠입니다."); break;
                    case 6: Console.WriteLine("호랑이 띠입니다."); break;
                    case 7: Console.WriteLine("토끼 띠입니다."); break;
                    case 8: Console.WriteLine("용 띠입니다."); break;
                    case 9: Console.WriteLine("뱀 띠입니다."); break;
                    case 10: Console.WriteLine("말 띠입니다."); break;
                    case 11: Console.WriteLine("양 띠입니다."); break;
                }
                Console.Write("계속하실까요? Yes/No");
                Y_N = Console.ReadLine();
            } while (Y_N != "no" ||Y_N !="NO");*/

            /*int output = 1;
            for(int i = 1; i<=20; i++)
            {
                output *= i;
            }
            Console.WriteLine(output);*/
            /*for (int i = '가'; i <= '힣'; i++)
            {
                Console.Write((char)i);
            }*/

            /*string[] array = { "사과", "배", "포도", "딸기", "바나나" };

            foreach(var item in array)
            {
                Console.WriteLine(item);
            }*/

            /*for (int i = 0; i < 10; i=i+2)
            {
                for (int j = 0; j < 10 - i/2; j++)
                    Console.Write(' ');
                for (int j = 0; j < i + 1; j++)
                    Console.Write('*');
                Console.Write('\n');
            }*/
               for (int i = 0; j < 9 - i; j++)
           { 
                   Console.Write(' ');
               for (int j = 0; j < i + 1; j++)
                   Console.Write('*');
               Console.Write('\n');
           }

            /*string input = "Potato Tomato";
            Console.WriteLine(input.ToUpper());
            Console.WriteLine(input.ToLower());*/

            /*string input = "감자 고구마 토마토";
            string[] inputs = input.Split(new char[] { ' ' });

            Console.WriteLine(input);

            foreach(var item in inputs)
            {
                Console.WriteLine(item);
            }*/




            /*int x = 1;
            while(x<50)
            {
                Console.Clear();
                Console.SetCursorPosition(x, 5);

                if (x % 3 == 0)
                    Console.WriteLine("__@");
                else if (x % 3 == 1)
                    Console.WriteLine("_^@");
                else
                    Console.WriteLine("^_@");

                Thread.Sleep(100);
                x++;
            }

        for(int i =0;i < 10;i++)
        {
            Console.Write("출력");

        }
         int j = 0;
        string[] intArray = { "출력" };

        while (j < 10)
        {
            Console.WriteLine(j + "번째 출력:" + intArray[0]);
            j++;
        }*/

            /*int max = int.MinValue;
            int min = int.MaxValue;
            int[] array = new int[5];
            for (int i = 0; i < 5; i++)
            {
                Console.Write("숫자를 입력해 주세요:");
                array[i] = int.Parse(Console.ReadLine());

               
                if (array[i] < min) { min = array[i]; }
                if (array[i] > max) { max = array[i]; }
            }
            Console.WriteLine("-------------------------");
            Console.WriteLine("가장 큰 수: " + max + " \n가장 작은 수: " + min);*/


            
        }
    }
}
 
  

