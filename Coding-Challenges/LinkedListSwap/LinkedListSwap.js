/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/*
@param {ListNode} head
@return {ListNode}
*/

function swapPairs(head){
    let temp = new ListNode(0, head);
    let previous = temp;
    let current = head;
    while (current != null && current.next != null){
        previous.next = current.next;
        current.next = previous.next.next;
        previous.next.next = current;

        previous = previous.next.next;
        current = previous.next;
    }

    return temp.next;
};