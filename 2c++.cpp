#include <string>
#include <iostream>
#include <vector>
int count(const vector<int>& nums) {
    int count = 0;
    for (int num : nums) {
        // считаем количество цифр в числе
        int numb = 0;
        if (num == 0) {
            numb = 1; // У числа 0 одна цифра
        }
        else {
            int temp = num;
            while (temp != 0) {
                temp /= 10;
                numb++;
            }
        }
        // проверяем, нечетное ли количество цифр
        if (numb % 2 != 0) {
            count++;
        }
    }
    return count;
}

int main() {

    setlocale(LC_ALL, "Russian");
    cout << "введите количество чисел: ";
    int n;
    cin >> n;
    vector<int> nums(n);
    cout << "введите " << n << " целых числа: "<<endl;
    for (int i = 0; i < n; ++i) {
        cin >> nums[i]; // вводим числа в массив
    }
    int res = count(nums);
    cout << "количество чисел с нечетным количеством цифр: " << res << endl;

    return 0;
}