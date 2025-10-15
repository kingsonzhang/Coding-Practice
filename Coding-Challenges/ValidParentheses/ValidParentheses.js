function validParentheses(string){
    let parentheses = string.split("");
    let stack = [];
    while (parentheses.length){
        let sign = parentheses.shift();
        if (sign == "{")
            stack.push("}");
        else if (sign == "[")
            stack.push("]");
        else if (sign == "(")
            stack.push(")");
        else
            if (sign != stack.pop())
                return false;
    }
    return stack.length == 0;
}