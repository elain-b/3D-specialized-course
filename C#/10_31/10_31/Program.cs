using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _10_31
{
    class Program
    {
        static void Main(string[] args)
        {
            /*Console.Write("숫자 입력: ");
              int input = int.Parse(Console.ReadLine());
              if (input % 2 == 0)
              {
                  Console.WriteLine("짝수입니다!");
              }
              {
                  if (input % 2 == 1)
                  {
                      Console.WriteLine("홀수입니다!");
                  }
              }
              if (DateTime.Now.Hour < 12)
              {
                  Console.WriteLine("오전입니다.");
              }
              if (12<=DateTime.Now.Hour)
              {
                  Console.WriteLine("오후입니다.");
              }*/

            /*Console.Write("이번 달은 몇 월인가요:");

            int input = int.Parse(Console.ReadLine());


            switch(input)
            {
                case 12:
                case 1:
                case 2:
                    Console.WriteLine("겨울입니다.");
                    break;
                case 3:
                case 4:
                case 5:
                    Console.WriteLine("봄입니다.");
                    break;
                case 6:
                case 7:
                case 8:
                    Console.WriteLine("여름입니다.");
                    break;
                case 9:
                case 10:
                case 11:
                    Console.WriteLine("가을입니다.");
                    break;
                default:
                    Console.WriteLine("대체 어떤 행성에 살고 계신가요?");
                    break;
            }*/
            /*ConsoleKeyInfo info = Console.ReadKey();
            switch (info.Key)
            {
                case ConsoleKey.UpArrow:
                    Console.WriteLine("위로 이동");
                    break;
                case ConsoleKey.RightArrow:
                    Console.WriteLine("오른쪽으로 이동");
                    break;
                case ConsoleKey.DownArrow:
                    Console.WriteLine("아래쪽으로 이동");
                    break;
                case ConsoleKey.LeftArrow:
                    Console.WriteLine("왼쪽으로 이동");
                    break;
                default:
                    Console.WriteLine("다른 키를 눌렀습니다.");
                    break;
            }*/
            /*Console.Write("태어난 년도:");
            int birth = int.Parse(Console.ReadLine());
            switch(birth % 12)
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
            }*/
            Console.Write("학년을 입력하세요:");
            int level = int.Parse(Console.ReadLine());
            switch (level)
            {
                case 1: Console.WriteLine("수강해야 하는 전공 학접 12학점"); break;
                case 2: Console.WriteLine("수강해야 하는 전공 학접 18학점"); break;
                case 3: Console.WriteLine("수강해야 하는 전공 학접 10학점"); break;
                case 4: Console.WriteLine("수강해야 하는 전공 학접 18학점"); break;
            }
        }
    }
}
