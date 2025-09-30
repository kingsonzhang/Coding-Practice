def ArrayWaterContainer(height: list[int]):
    leftIndex = 0
    rightIndex = len(height) - 1
    max = 0
    while (leftIndex != rightIndex):
        localHeight = height[leftIndex] if height[leftIndex] < height[rightIndex] else height[rightIndex]
        max = localHeight * (rightIndex - leftIndex) if localHeight * (rightIndex - leftIndex) > max else max
        if (height[leftIndex] > height[rightIndex]):
            rightIndex -= 1
        else:
            leftIndex += 1
    return max

print(ArrayWaterContainer([1,8,6,2,5,4,8,3,7]))