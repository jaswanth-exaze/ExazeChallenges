package challenges;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

public class DeduplicateSortedIDsTest {
    @Test 
    void InvaildTest(){
        assertEquals("Invaild Input", DeduplicateSortedIDs.DeduplicateSortedIDs(null));
        assertEquals("", DeduplicateSortedIDs.DeduplicateSortedIDs(""));
    }
    @Test 
    void VaildTest(){
        assertEquals("2 3 7 9", DeduplicateSortedIDs.DeduplicateSortedIDs("2 2 3 3 3 7 9 9"));
        assertEquals("2 3 7 9", DeduplicateSortedIDs.DeduplicateSortedIDs("2 2 2 3 3 3 3 7 9 9 9"));
        assertEquals("2 3 7 9", DeduplicateSortedIDs.DeduplicateSortedIDs("2    2    2 3    3   3 3 7 9 9 9"));
        
        assertEquals("1 2 3", DeduplicateSortedIDs.DeduplicateSortedIDs("1 2 3"));
        assertEquals("1 2 3", DeduplicateSortedIDs.DeduplicateSortedIDs("1 1 1 1 2 2 2 2 3 3 3 3 3"));
    }
}
