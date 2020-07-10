/*
Language:   C#
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/insert-a-node-into-a-sorted-doubly-linked-list/problem
*/ 
 
 static DoublyLinkedListNode sortedInsert(DoublyLinkedListNode head, int data) {

        if(head == null){
            return new DoublyLinkedListNode(data);
        }

        DoublyLinkedListNode temp = new DoublyLinkedListNode(data);
        
        //insert at begining
         if(head.data >= data){
                temp.next = head;
                temp.prev = null;
                head.prev = temp;
                return temp;
            }

        //insert in between
        DoublyLinkedListNode current = head;
        while(current.next != null){
            DoublyLinkedListNode nxt = current.next;
            if(current.data <= data && data <= nxt.data){
                temp.next = nxt;
                temp.prev = current;
                current.next = temp;
                nxt.prev = temp;
                return head;
            }
            current = current.next;
        }

        //insert at End
        temp.next = null;
        temp.prev = current;
        current.next = temp;
        return head; 
    }
