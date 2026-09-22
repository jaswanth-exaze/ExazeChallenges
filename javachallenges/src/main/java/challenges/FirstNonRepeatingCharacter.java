package challenges;

import java.util.ArrayList;

import java.util.Collections;

public class FirstNonRepeatingCharacter {
    public static String FirstNonRepeatingCharacter(String input) {

        if (input == null || input.trim().isEmpty() || !input.trim().matches("[a-z]+")) {
            return "Invalid Input";
        }
        input = input.trim();

        ArrayList<Integer> alphaList = new ArrayList<>(Collections.nCopies(26, 0));
        // this ArrayList for storing the lowercace letter a-z count
        ArrayList<Integer> occurrenceList = new ArrayList<>(Collections.nCopies(26, 0));
        // this ArrayList for storing the occurance of input sequence
        int occurrenceCount = 1;
        for (int i = 0; i < input.length(); i++) {
            char cur = input.charAt(i);
            int asciiValue = (int) cur - 97;

            alphaList.set(asciiValue, alphaList.get(asciiValue) + 1);
            if (occurrenceList.get(asciiValue) == 0) {
                occurrenceList.set(asciiValue, occurrenceCount);
                occurrenceCount++;
            }
        }

        String result = null;
        int minOcc = 26;
        for (int i = 0; i < alphaList.size(); i++) {
            if (alphaList.get(i) == 1) { // this will check character that occurs exactly once
                int curOcc = occurrenceList.get(i);
                if (curOcc < minOcc) { // this will check the first accurance
                    minOcc = curOcc;
                    result = String.valueOf((char) (i + 97));
                }

            }
        }

        return result == null ? "NONE" : result;

    }

    public static void main(String[] args) {
        System.out.println(FirstNonRepeatingCharacter("swiss"));
    }

}
