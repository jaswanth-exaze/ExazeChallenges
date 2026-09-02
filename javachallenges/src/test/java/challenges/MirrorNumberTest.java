package challenges;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
public class MirrorNumberTest {
    @Test
    void testsinglenumber(){
        assertEquals(MirrorNumber.MirrorNumber(1), true);
        assertEquals(MirrorNumber.MirrorNumber(5), true);
        assertEquals(MirrorNumber.MirrorNumber(9), true);
    }
    @Test
    void testtwodiggitnumber(){
        assertEquals(MirrorNumber.MirrorNumber(22), true);
        assertEquals(MirrorNumber.MirrorNumber(21), false);
    }

    @Test
    void testmultidigitnumber(){
        assertEquals(MirrorNumber.MirrorNumber(212), true);
        assertEquals(MirrorNumber.MirrorNumber(1221), true);
        assertEquals(MirrorNumber.MirrorNumber(211), false);
    }
    @Test
    void testStringInput(){ 
        assertEquals(MirrorNumber.MirrorNumber("00100"),true);
        assertEquals(MirrorNumber.MirrorNumber("212"),true);
        assertEquals(MirrorNumber.MirrorNumber("123"),false);
    }
}
