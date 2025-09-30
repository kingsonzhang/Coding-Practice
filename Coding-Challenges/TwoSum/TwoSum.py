def twoSum(nums: list[int], target: int):
    dictionary = {}
    for index, number in enumerate(nums):
        if(dictionary.get(target - number) != None):
            return [dictionary.get(target - number), index]
        else:
            dictionary[number] = index

print(twoSum([2, 7, 11, 15], 9))