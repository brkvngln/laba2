using System;
class Program
{
    static int Reverse(int num)
    {
        int rev = 0;
        while (num != 0)
        {
            rev = reversed * 10 + num % 10;
            num /= 10;
        }
        return rev;
    }

    static void Main()
    {
        // чтение чисел из одной строки ввода
        string[] input = Console.ReadLine().Split(' ');
        foreach (string s in input)
        {
            int num = int.Parse(s);
            Console.Write(Reverse(num) + " ");
        }
    }
}
