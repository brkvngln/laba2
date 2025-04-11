#include <string>
#include <iostream>
using namespace std;
int reverse(int num) {
    int rev = 0;
    while (num != 0) {
        rev = rev * 10 + num % 10;
        num /= 10;
    }
    return rev;
}
int main() {
    int n;
    cin >> n; // количество чисел
    for (int i = 0; i < n; ++i) {
        int num;
        cin >> num;
        cout << reverse(num) << " ";
    }
    return 0;
}