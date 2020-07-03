using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _11_2
{
    class Program
    {
        static void Main(string[] args)
        {
            int input = 0;
            do
            {
                Console.Write("숫자입력(1:자기소개, 2:구구단, 3:더하기, 4: 역구구단, 5: 역삼각형, 6:EXIT) : ");
                input = int.Parse(Console.ReadLine());
                switch (input)
                {
                    case 1:
                        Console.WriteLine("자기소개서출력");
                        Console.WriteLine("이름 :  ");
                        Console.WriteLine("주소 :  ");
                        Console.WriteLine("전화 :  ");
                        break;

                    case 2:
                        Console.WriteLine("구구단표");

                        for (int j = 1; j < 10; j++)
                        {
                            Console.WriteLine(j + "단");
                            for (int i = 1; i < 10; i++)
                                Console.Write(j + "*" + i + "=" + j * i + "\t");
                            Console.WriteLine();
                        }
                        break;
                    case 3:
                        //정수를 입력으로 받아서 1부터 해당 정수까지 더한 결과 출력
                        //입럭된 정수가 음수이면 에러 출력
                        int output = 0;
                        Console.Write("덧셈 숫자를 입력하시오 : ");
                        int value = int.Parse(Console.ReadLine());
                        if (value >= 0)
                        {
                            for (int k = 0; k <= value; k++)
                                output += k;
                            Console.WriteLine("1부터" + value + "까지 덧셈 결과 : " + output);
                        }
                        else
                        {
                            Console.WriteLine("잘못된 숫자 입력입니다");
                        }
                        break;

                    case 4:
                        Console.WriteLine("역구구단표");
                        for (int i = 9; i > 0; i--)
                        {
                            for (int j = 9; j > 0; j--)
                            {
                                Console.Write(i + "*" + j + "=" + i * j + "\t");
                            }
                            Console.WriteLine();
                    
                        }
                        break;

                    case 5:
                        Console.WriteLine("역삼각형 출력");
                        for (int i= 0; i < 8; i++)

                        {
                            for (int k = 0; k < i; k++)
                                Console.Write(" ");
                            for (int j = 15; j >= i * 2 + 1; j--)
                                Console.Write("*");
                            Console.WriteLine();
                        }
                        break;

                    default:
                        Console.WriteLine("잘못된 숫자를 누르셨습니다");
                        break;
                      }
                } while (input != 6) ;
           }
     }
}
    

