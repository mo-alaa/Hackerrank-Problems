/*
Language:   C#
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/merge-two-sorted-linked-lists/problem
*/




static SinglyLinkedListNode mergeLists(SinglyLinkedListNode headA, SinglyLinkedListNode headB) {

        if(headA==null && headB==null) return null;
        
        if(headA!=null && headB==null) return headA;
        
        if(headA == null && headB!=null) return headB;
        
        if(headA.data <= headB.data)
            headA.next = mergeLists(headA.next, headB);
        
        else
        {
            SinglyLinkedListNode temp = headB;
            headB = headB.next;
            temp.next = headA;
            headA = temp;
            headA.next = mergeLists(headA.next, headB);
        }

        return headA;
    }
    
    
    
