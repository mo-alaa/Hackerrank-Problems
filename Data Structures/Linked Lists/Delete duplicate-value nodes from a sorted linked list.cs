/*
Language:   C#
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/delete-duplicate-value-nodes-from-a-sorted-linked-list/problem
*/


static SinglyLinkedListNode removeDuplicates(SinglyLinkedListNode head) {

        SinglyLinkedListNode p = head;
        while(p.next != null){
            if(p.data == p.next.data){
                p.next = p.next.next;
            }else{
                p = p.next;
            }
        }

        return head;
    }
