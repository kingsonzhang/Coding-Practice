public class ArrayWaterContainer{
    public static void main(String args[]){
        ArrayWaterContainer tester = new ArrayWaterContainer();
        int[] heights = {1, 8, 6, 2, 5, 4, 8, 3, 7};
        System.out.println(tester.findMaxArea(heights));
    }

    public int findMaxArea(int[] height){
        int leftIndex = 0;
        int rightIndex = height.length - 1;
        int max = 0;
        while (leftIndex != rightIndex){
            int localHeight = height[leftIndex] < height[rightIndex] ? height[leftIndex] : height[rightIndex];
            max = localHeight * (rightIndex - leftIndex) > max ? localHeight * (rightIndex - leftIndex) : max;
            if (height[leftIndex] < height[rightIndex])
                leftIndex++;
            else
                rightIndex--;
        }
        return max;
    }
}