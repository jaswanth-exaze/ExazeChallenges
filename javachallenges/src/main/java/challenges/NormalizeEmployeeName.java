package challenges;

import java.util.Arrays;

import java.util.stream.Collectors;

public class NormalizeEmployeeName {
    public static String NormalizeEmployeeName(String input){

        input=input.trim();
        if(!input.isEmpty()){
            return Arrays.stream(input.split("\\s+")).map((x)->(x.substring(0,1).toUpperCase()+x.substring(1).toLowerCase())).collect(Collectors.joining(" "));
        }
        else{
            return "invalid input";
        }

    }
}
