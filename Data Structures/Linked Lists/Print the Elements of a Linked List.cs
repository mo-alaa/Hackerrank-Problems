  /*
Language:   C#
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/print-the-elements-of-a-linked-list/problem
*/
  static void printLinkedList(SinglyLinkedListNode head) {

        Console.WriteLine(head.data);
        SinglyLinkedListNode node = head.next;
        while(node != null){
            Console.WriteLine(node.data);
            node = node.next;
        }
    }
