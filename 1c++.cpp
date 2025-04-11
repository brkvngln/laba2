#include <string>
#include <iostream>

using namespace std;
// функция для сжатия строки
string compr(const string& S) {
    string comp;
    int n = S.length();
  // подсчет количества повторений текущего символа
    for (int i = 0; i < n; i++) {
        char cur = S[i];
        int count = 1;
        // подсчет количества повторений текущего символа
        while (i + 1 < n && S[i + 1] == cur) {
            count++;
            i++;
        }

        // добавление символа и его количества в сжатую строку
        comp += cur + to_string(count);
    }

    // если сжатая строка не короче исходной, возвращаем исходную строку
    return comp.length() < S.length() ? comp : S;
}

int main()
{
    string S;
   // ввод строки для сжатия пользователем 
   cin >> S;
    // выполняем функцию для данной строки
    string result = compr(S);
    setlocale(LC_ALL, "Russian");
    // выводим сжатую строку
    cout << "Сжатая строка: " << result << endl;
    return 0;
}
