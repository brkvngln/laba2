using System;
using System.Collections.Generic;
class Program
{
    static int Count(List<int> nums)
    {
        int count = 0;
        foreach (int num in nums)
        {
            // Считаем количество цифр в числе
            int numb = 0;
            if (num == 0)
            {
                numb = 1; // У числа 0 одна цифра
            }
            else
            {
                int temp = num;
                while (temp != 0)
                {
                    temp /= 10;
                    numb++;
                }
            }
            // Проверяем, нечетное ли количество цифр
            if (numb % 2 != 0)
            {
                count++;
            }
        }
        return count;
    }

    static void Main()
    {
        Console.SetCulture(new System.Globalization.CultureInfo("ru-RU"));
        Console.Write("Введите количество чисел: ");
        int n = int.Parse(Console.ReadLine());
        List<int> nums = new List<int>(n);
        
        Console.WriteLine($"Введите {n} целых числа:");
        for (int i = 0; i < n; i++)
        {
            nums.Add(int.Parse(Console.ReadLine())); // Вводим числа в список
        }
        
        int result = Count(nums);
        Console.WriteLine($"Количество чисел с нечетным количеством цифр: {result}");
    }
}