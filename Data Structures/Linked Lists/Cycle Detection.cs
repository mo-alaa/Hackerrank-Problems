     /*
Language:   C#
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/detect-whether-a-linked-list-contains-a-cycle/problem
*/    
    
    
static bool hasCycle(SinglyLinkedListNode head) {
        if(head == null)
            return false;

        if(head.next == null)
            return false;

        SinglyLinkedListNode prev = head;
        SinglyLinkedListNode current = head;
        while(current != null && current.next != null){
            prev = prev.next;
            current = current.next.next;
            
            if(prev == current){
                return true;
            }
        }
        return false;
    }
