function generateParentheses(amount){
    let variations = [];
    function DFS(leftCount, rightCount, combination){
        if (leftCount == rightCount && leftCount == amount)
            variations.push(combination);
        if (leftCount < amount)
            DFS(leftCount + 1, rightCount, combination + "(");
        if (rightCount < leftCount)
            DFS(leftCount, rightCount + 1, combination + ")");
    }

    DFS(0, 0, "");
    return variations;
}

console.log(generateParentheses(4));