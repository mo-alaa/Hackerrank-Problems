/*
Language:   C#
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/insert-a-node-at-the-tail-of-a-linked-list/problem
*/

 static SinglyLinkedListNode insertNodeAtTail(SinglyLinkedListNode head, int data) {
        //first, check if the head is null
        if(head == null){
            head = new SinglyLinkedListNode(data);//so we will insert the head
        }
        else{
            SinglyLinkedListNode node = head;
            while(node.next != null){//the tail is the one that has next = null
                node = node.next;
            }
            node.next = new SinglyLinkedListNode(data);//add a new node after the tail
        }
        
        return head;
    }
