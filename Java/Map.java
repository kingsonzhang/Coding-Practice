import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Map{
    public static void main(String args[]){
        List<Integer> numbers = new ArrayList<>();
        for (int i = 0; i < 10; i++)
            numbers.add(i);
        System.out.println(numbers);
        //Square each number using map and lamba function
        System.out.println(numbers.stream().map(temp -> temp * temp).collect(Collectors.toList()));
    }
}