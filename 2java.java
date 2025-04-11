import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Введите числа через запятую: ");
        String input = scanner.nextLine();
        
        // Разделяем строку по запятым и преобразуем в массив чисел
        String[] numStrings = input.split(",");
        int[] nums = new int[numStrings.length];
        
        for (int i = 0; i < numStrings.length; i++) {
            nums[i] = Integer.parseInt(numStrings[i].trim());
        }
        
        int count = countNumbersWithOddDigits(nums);
        System.out.println("Output: " + count);
    }
    
    public static int countNumbersWithOddDigits(int[] nums) {
        int count = 0;
        for (int num : nums) {
            // Преобразуем число в строку (учитывая абсолютное значение для отрицательных чисел)
            String numStr = String.valueOf(Math.abs(num));
            if (numStr.length() % 2 != 0) {
                count++;
            }
        }
        return count;
    }
}