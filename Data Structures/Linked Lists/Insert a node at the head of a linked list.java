/*
Language:   Java
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/insert-a-node-at-the-head-of-a-linked-list/problem
*/

static SinglyLinkedListNode insertNodeAtHead(SinglyLinkedListNode llist, int data) {

        SinglyLinkedListNode newHead = new SinglyLinkedListNode(data);

        if(llist != null) {  
            newHead.next = llist;  
        } 
        
        return newHead;
     
    }
