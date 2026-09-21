package challenges;
import java.util.List;

public class FindFirstFailedCheck {

    public static int FindFirstFailedCheck(String input) {
        // List<String> resultList = List.of(input.split(" "));
        // int result = resultList.indexOf("FAIL"); // if Fail not in this list it return -1

        // return result + 1;// if Fail not in this list it return -1+1 = 0
        return List.of(input.split(" ")).indexOf("FAIL")+1;
    }

    public static void main(String[] args) {
        System.out.println(FindFirstFailedCheck("PASS PASS FAIL PASS"));
    }
}
