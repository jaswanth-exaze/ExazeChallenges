package challenges;

import java.util.Arrays;
import java.util.stream.Collectors;

public class DeduplicateSortedIDs {
    public static String DeduplicateSortedIDs(String inputs) {
        if (inputs != null ) {
            return Arrays.stream(inputs.split("\\s+"))
                    .distinct()
                    .collect(Collectors.joining(" "));

        } 
        return "Invaild Input";

    }

    public static void main(String[] args) {
        System.out.println(DeduplicateSortedIDs("2 2 3 3 3 7 9 9"));
    }
}
