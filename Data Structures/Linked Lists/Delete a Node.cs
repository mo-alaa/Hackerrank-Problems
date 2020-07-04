     /*
Language:   C#
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/delete-a-node-from-a-linked-list/problem
*/

  static SinglyLinkedListNode deleteNode(SinglyLinkedListNode head, int position) {

        if(position == 0){ //if we want to delete the head, then teturn the head.next
            return head.next;
        }

        int i=0;
        SinglyLinkedListNode current = head;
        while(i < position -1){
            current = current.next;
            i++;
        }

        current.next = current.next.next;// as if we have [A B C] and we want to delete B, so we set A.next to A.next.next wich is C
        return head;
    }
