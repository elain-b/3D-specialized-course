using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication2
{
    class Program
    {
        /*class Book
        {
            public string name;
            public DateTime publishedDate;
            public string author;
            public string owner;
            public string publisher;
            public string seniorEditor;
            public string producer;
            public string editor;
            public string designer;
        }*/

        /*class Social
        {
            public string name;
            public string id;
        }*/

            static void Main(string[] args)
            {
            /*Book book = new Book()
            {
                name = "PHP 프로그래밍 입문",
                publishedDate = new DateTime(2013, 5, 20),
                author = "황재호",
                owner = "김태헌",
                publisher = "한빛아카테미(주)",
                seniorEditor = "김현용",
                producer = "김이화",
                editor = "김이화",
                designer = "여동일"
            };
            Console.Write(
                  book.name + "\n"
                + book.publishedDate + "\n"
                + book.author + "\n"
                + book.owner + "\n"
                + book.publisher + "\n"
                + book.editor + "\n"
                + book.designer + "\n");*/

            /*Random random = new Random();
            int answer = random.Next(20, 90);
            int count = 0;
            while(true)
            {
                Console.Write("숫자를 입력해주세요: ");
                int input = int.Parse(Console.ReadLine());

                if(input > answer)
                {
                    Console.WriteLine(input + "보다는 작은 숫자입니다.");
                }
                else if(input<answer)
                {
                    Console.WriteLine(input + "보다는 큰 숫자입니다.");
                }
                else
                {
                    Console.WriteLine("정답입니다...!" + count + "번째 맞췄습니다.\n");
                    break;
                }
                Console.WriteLine();
                count++;
            }*/

            /*Social social = new Social()
                {
                    name = "FaceBook",
                    id = "abcd",
                };

            Console.Write(
                      social.name + "\n"
                      + social.id + "\n");*/

            Random random = new Random();
            int answer = random.Next(1, 3);
            while (true)
            {
                Console.Write("숫자를 입력해주세요 (1=>가위,2=>바위,3=>보 0:끝) : ");
                int input = int.Parse(Console.ReadLine());
                if (input == 0) break;

                if (input == answer)
                {
                    switch(input)
                    {
                        case 1: { Console.Write("가위 : "); break; }
                        case 2: { Console.Write("바위 : "); break; }
                        case 3: { Console.Write("보 : "); break; }
                    }
                    Console.WriteLine(input + "무승부입니다.");
                }
                else if (input == 1 && answer == 2)
                {
                    Console.WriteLine(input + "컴퓨터 가위 : 당신이 이겼습니다.");
                }
                else if (input == 1 && answer == 3)
                {
                    Console.WriteLine("컴퓨터 가위 : 컴퓨터가 이겼습니다.");
                }
                else if (input == 2 && answer == 1)
                {
                    Console.WriteLine(input + "컴퓨터 바위 : 컴퓨터가 이겼습니다.");
                }
                else if (input == 2 && answer == 3)
                {
                    Console.WriteLine(input + "컴퓨터 바위 : 컴퓨터가 이겼습니다.");
                }
                else if (input == 3 && answer == 1)
                {
                    Console.WriteLine(input + "컴퓨터 보 : 컴퓨터가 이겼습니다.");
                }
                else if (input == 3 && answer == 2)
                {
                    Console.WriteLine(input + "컴퓨터 보 : 컴퓨터가 이겼습니다.");
                }
                Console.WriteLine();
               
            }
        }
    }
}
