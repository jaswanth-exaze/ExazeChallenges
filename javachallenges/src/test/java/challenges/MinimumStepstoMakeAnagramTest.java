package challenges;


import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

public class MinimumStepstoMakeAnagramTest {
    @Test
    void test(){
        assertEquals(MinimumStepstoMakeAnagram.anagram("abcd", "abcd"), 0);
        assertEquals(MinimumStepstoMakeAnagram.anagram("abcd", "abcde"), -1);
        assertEquals(MinimumStepstoMakeAnagram.anagram("abcd", "abcf"), 1);
    }
}
