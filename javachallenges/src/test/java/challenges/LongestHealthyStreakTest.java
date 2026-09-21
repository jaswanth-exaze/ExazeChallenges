package challenges;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

public class LongestHealthyStreakTest {
    @Test
    void ValidTest() {
        assertEquals(6, LongestHealthyStreak.LongestHealthyStreak("UP UP DOWN UP UP UP UP UP UP"));
        assertEquals(3, LongestHealthyStreak.LongestHealthyStreak("DOWN UP UP UP DOWN UP"));
        assertEquals(2, LongestHealthyStreak.LongestHealthyStreak("UP DOWN UP UP DOWN"));
    }

    @Test
    void ExtraSpacesTest() {
        assertEquals(4, LongestHealthyStreak.LongestHealthyStreak("UP   UP    DOWN  UP UP UP UP"));
        assertEquals(3, LongestHealthyStreak.LongestHealthyStreak("   DOWN   UP   UP   UP   DOWN   "));
    }

    @Test
    void NoHealthyStreakTest() {
        assertEquals(0, LongestHealthyStreak.LongestHealthyStreak(""));
        assertEquals(0, LongestHealthyStreak.LongestHealthyStreak("   "));
        assertEquals(0, LongestHealthyStreak.LongestHealthyStreak("DOWN"));
        assertEquals(0, LongestHealthyStreak.LongestHealthyStreak("DOWN DOWN DOWN"));
    }

    @Test
    void SingleHealthyStatusTest() {
        assertEquals(1, LongestHealthyStreak.LongestHealthyStreak("UP"));
        assertEquals(1, LongestHealthyStreak.LongestHealthyStreak("DOWN UP DOWN"));
    }
}
