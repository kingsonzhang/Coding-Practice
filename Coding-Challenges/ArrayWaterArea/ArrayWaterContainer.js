function ArrayWaterArea(height){
    let firstIndex = 0;
    let secondIndex = height.length - 1;
    let max = 0;
    while(firstIndex != secondIndex){
        localMaximum = height[firstIndex] > height[secondIndex] ? height[secondIndex] : height[firstIndex];
        max = localMaximum * (secondIndex - firstIndex) > max ? localMaximum * (secondIndex - firstIndex) : max;
        if (height[firstIndex] > height[secondIndex])
            secondIndex--;
        else
            firstIndex++;
    }
    return max;
}

console.log(ArrayWaterArea([1,8,6,2,5,4,8,3,7]));