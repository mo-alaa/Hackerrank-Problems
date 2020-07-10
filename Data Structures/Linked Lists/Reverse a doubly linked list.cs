/*
Language:   C#
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/reverse-a-doubly-linked-list/problem
*/
 
 
 static DoublyLinkedListNode reverse(DoublyLinkedListNode p) {
       
        if(p.next == null){
            p.next = p.prev;
            p.prev = null;
            return p;
        }

        DoublyLinkedListNode newHead = reverse(p.next);
        
        DoublyLinkedListNode temp = p.next;
        p.next = p.prev;
        p.prev = temp;

        return newHead;
    }
