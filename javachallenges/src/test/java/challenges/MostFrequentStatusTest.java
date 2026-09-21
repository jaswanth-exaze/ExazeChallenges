package challenges;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

public class MostFrequentStatusTest {
    @Test
    void Vaild() {
        assertEquals("OPEN", MostFrequentStatus.MostFrequentStatus("OPEN CLOSED OPEN HOLD CLOSED OPEN"));
        assertEquals("OPEN", MostFrequentStatus.MostFrequentStatus("OPEN CLOSED OPEN HOLD CLOSED HOLD"),"If tie it will return First appearance");
        assertEquals("CLOSED", MostFrequentStatus.MostFrequentStatus("CLOSED CLOSED OPEN OPEN CLOSED OPEN"));
      
    }
}
