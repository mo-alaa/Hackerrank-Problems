/*
Language:   C#
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/reverse-a-linked-list/problem
*/
 
 
 static SinglyLinkedListNode newHead;
    static SinglyLinkedListNode reverse(SinglyLinkedListNode p) {
        if(p == null) return null;
        if(p.next == null) return p;

        newHead = reverse(p.next);

        SinglyLinkedListNode Q = p.next;
        Q.next = p;
        p.next = null;

        return newHead;//makes sure that the returned value to the previous stack space is always the head we want;
}
