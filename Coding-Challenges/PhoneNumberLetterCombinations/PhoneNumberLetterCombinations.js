function letterCombinations(digits){
    let phoneMap = {
        2 : ['a', 'b', 'c'],
        3 : ['d', 'e', 'f'],
        4 : ['g', 'h', 'i'],
        5 : ['j', 'k', 'l'],
        6 : ['m', 'n', 'o'],
        7 : ['p', 'q', 'r', 's'],
        8 : ['t', 'u', 'v'],
        9 : ['w', 'x', 'y', 'z']
    }

    let combinations = [''];
    while (digits != 0){
        let newCombinations = [];
        for (letter of phoneMap[digits % 10]){
            for (oldCombinations of combinations){
                newCombinations.push(letter + oldCombinations);
            }
        }
        combinations = newCombinations;
        digits = Math.trunc(digits / 10);
    }
    return combinations;
}