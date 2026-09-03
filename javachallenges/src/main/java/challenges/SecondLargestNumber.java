package challenges;

import java.util.Arrays;
import java.util.Comparator;


public class SecondLargestNumber {
    public static int SecondLargestNumber(int[] input){
        if (input == null || input.length < 2) {
            throw new IllegalArgumentException("Array must contain at least two elements.");
        }
        return Arrays.stream(input)
        .distinct()
        .boxed()
        .sorted(Comparator.reverseOrder())
        .skip(1)
        .findFirst()
        .orElseThrow(() -> new IllegalArgumentException("Not enough unique elements."));

    }
}


// public static int getSecondLargestEfficient(int[] input) {
//     int largest = Integer.MIN_VALUE;
//     int secondLargest = Integer.MIN_VALUE;

//     for (int num : input) {
//         if (num > largest) {
//             secondLargest = largest;
//             largest = num;
//         } else if (num > secondLargest && num != largest) {
//             secondLargest = num;
//         }
//     }
    
//     if (secondLargest == Integer.MIN_VALUE) {
//         throw new IllegalArgumentException("No second largest unique element found.");
//     }
//     return secondLargest;
// }
