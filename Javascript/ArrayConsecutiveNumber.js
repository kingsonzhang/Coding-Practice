function consecutiveNumbers(array){
    let count = 1;
    while (count < array.length){
        if (array[count] - array[count - 1] != 1)
            return array[count];
        count++;
    }
    return null;
}

console.log(consecutiveNumbers([1, 2, 3, 4, 5, 7]));
console.log(consecutiveNumbers([-5, -4, -3, -1, 0, 1, 2, 3]));
console.log(consecutiveNumbers(1));