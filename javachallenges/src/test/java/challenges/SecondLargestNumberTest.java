package challenges;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;



public class SecondLargestNumberTest {
    @Test
    void test(){
        assertEquals(SecondLargestNumber.SecondLargestNumber(new int[]{1, 2, 3, 4}),3);
      
    }
    @Test
    void testEmptyArrayThrowsException() {
        // Assert that passing an empty array correctly throws an error
        assertThrows(IllegalArgumentException.class, () -> {
            SecondLargestNumber.SecondLargestNumber(new int[]{});
        });
    }
    @Test
    void testDuplicates(){
        assertEquals(SecondLargestNumber.SecondLargestNumber(new int[]{1,2,3,4,4}), 3);
        assertEquals(SecondLargestNumber.SecondLargestNumber(new int[]{1,2,3,3,3,4,4}), 3);
    }
}
