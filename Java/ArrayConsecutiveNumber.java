
class ArrayConsecutiveNumber {
    public static void main (String args[]){
        ArrayConsecutiveNumber tester = new ArrayConsecutiveNumber();
        int[] firstTest = {1, 2, 3, 4, 5, 7};
        System.out.println(tester.find(firstTest));

        int[] secondTest = {-5, -4, -2, -1, 0, 1, 2, 3};
        System.out.println(tester.find(secondTest));

        int[] thirdTest = {0};
        System.out.println(tester.find(thirdTest));
    }

    public Integer find(int[] array) {
        int count = 1;
        while (count < array.length){
            if (array[count] - array[count - 1] != 1)
                return array[count];
            count++;
        }
        return null;
    }
}