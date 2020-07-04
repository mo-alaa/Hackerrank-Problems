  /*
Language:   C#
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/insert-a-node-at-a-specific-position-in-a-linked-list/problem
*/

  static SinglyLinkedListNode insertNodeAtPosition(SinglyLinkedListNode head, int data, int position) {

        SinglyLinkedListNode newNode = new SinglyLinkedListNode(data);

        if(head == null){
            newNode.next = null;
            return newNode;
        }

        int i = 0;
        SinglyLinkedListNode current = head;
        while(i < position -1){
            current = current.next;
            i++;
        }
        
        newNode.next = current.next;
        current.next = newNode;

        return head;
    }
    
//example: if the list has: [16, 13, 7] and we need to insert 1 at pos=2
// i=0, current=16, is i<2-1 ? yes so
// i =1,current=13, is i<2-1 ? no so
//current=13, newNode=1, newNode.next=7, 
//current.next = 1
