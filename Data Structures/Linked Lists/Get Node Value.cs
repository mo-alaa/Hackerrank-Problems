/*
Language:   C#
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/get-the-value-of-the-node-at-a-specific-position-from-the-tail/problem
*/

  static int getNode(SinglyLinkedListNode head, int pos) {

        SinglyLinkedListNode current = head;
        SinglyLinkedListNode follower = head;
        int iterator = 0;

        while(current.next != null){
            current = current.next;
            iterator ++;
            if(iterator > pos) follower = follower.next;
            
        }

        return follower.data;
    }
