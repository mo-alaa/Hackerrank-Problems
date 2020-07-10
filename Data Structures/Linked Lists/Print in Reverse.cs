  
     /*
Language:   C#
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/print-the-elements-of-a-linked-list-in-reverse/problem
*/

    static void reversePrint(SinglyLinkedListNode head) {
        if(head == null) return; //Exit Condition
        reversePrint(head.next); 
        Console.WriteLine(head.data);
    }
