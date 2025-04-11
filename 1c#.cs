using System;
using System.Text;

class Program
{
    static string Compr(string s)
    {
        if (string.IsNullOrEmpty(s)) return s;

        StringBuilder comp = new StringBuilder();
        int count = 1;

        for (int i = 1; i < s.Length; i++)
        {
            if (s[i] == s[i - 1])
            {
                count++;
            }
            else
            {
                comp.Append(s[i - 1]);
                comp.Append(count);
                count = 1;
            }
        }

        // Добавляем последний символ и его количество
        comp.Append(s[s.Length - 1]);
        comp.Append(count);

        // Возвращаем сжатую строку, если она короче исходной
        return comp.Length < s.Length ? comp.ToString() : s;
    }

    static void Main()
    {
        string S = Console.ReadLine() ?? "";
        string comp = Compr(S);
        Console.WriteLine("Сжатая строка: " + comp);
    }
}

