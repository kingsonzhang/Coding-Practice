import java.util.HashMap;
import java.util.Arrays;

public class TwoSum{
    public static void main(String args[]){
        TwoSum tester = new TwoSum();
        System.out.println(Arrays.toString(tester.twoSum(new int[] {2, 7, 11, 15}, 9)));
    }

    public int[] twoSum(int[] nums, int sum){
        HashMap<Integer, Integer> pairs = new HashMap<>();
        for (int i = 0; i < nums.length; i++){
            if (pairs.get(nums[i]) != null)
                return new int[] {pairs.get(nums[i]), i};
            else
                pairs.put(sum - nums[i], i);
        }
        return new int[] {0, 0};
    }
}