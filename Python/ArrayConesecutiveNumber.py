def consecutiveNumbers(array):
    for index in range(1, len(array)):
        if (array[index] - array[index - 1] != 1):
            return array[index]
    return None

print(consecutiveNumbers([1, 2, 3, 4, 5, 7]))
print(consecutiveNumbers([-5, -4, -3, -1, 0, 1, 2, 3]))
print(consecutiveNumbers([1]))