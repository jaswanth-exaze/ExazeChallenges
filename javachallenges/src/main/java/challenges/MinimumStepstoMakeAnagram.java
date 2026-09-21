package challenges;

public class MinimumStepstoMakeAnagram {
    public static int anagram(String x, String y) {
        if (x.length() == y.length()) {
            int res = 0;
            int[] alphabetsList = new int[26];
            for (int i = 0; i < x.length(); i++) {
                char ch1 = x.charAt(i);
                char ch2 = y.charAt(i);
                alphabetsList[ch1-97] = alphabetsList[ch1-97] + 1;
                alphabetsList[ch2-97] = alphabetsList[ch2-97] - 1;
            }
            for (int i : alphabetsList) {
                if (i >= 1) {
                    res = res + i;
                }
            }
            return res;
        }
        return -1;

    }
}
