/*
Language:   C#
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/find-the-merge-point-of-two-joined-linked-lists/problem
*/ 
    
    static int findMergeNode(SinglyLinkedListNode headA, SinglyLinkedListNode headB) {
        SinglyLinkedListNode currentA = headA;
        SinglyLinkedListNode currentB = headB;

        while(currentA != currentB) {
            //currentA
            if(currentA.next == null) currentA = headB;
            else currentA = currentA.next;
            //currentB
            if(currentB.next == null) currentB = headA;
            else currentB = currentB.next;
        }
        return currentA.data;//or currentB.data
    }
    
    /*
        imagine we have two lines A=5cm and B=3cm. and we need them to have the same end
        A -----
        B ---
        A+B ----- ---
        B+A --- -----
        so the solution will be to extend A by B cm and extend B by A cm
        this problem has a similar concept.

        once A.next is null, A now will be at the start of old B
        once B.next is null, B now will be at the start of old A
        now as new A and new B keep going they will intersect at a single point
        */
