
 /*
Language:   Java
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/array-left-rotation/problem
*/

import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.regex.*;

public class Solution {



    private static final Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        String[] nd = scanner.nextLine().split(" ");

        int n = Integer.parseInt(nd[0]);

        int d = Integer.parseInt(nd[1]);

        int[] a = new int[n];

        String[] aItems = scanner.nextLine().split(" ");
        scanner.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");

        for (int i = 0; i < n; i++) {
            int aItem = Integer.parseInt(aItems[i]);
            a[i] = aItem;
        }

        scanner.close();

        int[] newArr = new int[n];
        //shift left with 4 is the same as shift right with n-4
        //so the if n = 5, so the 1st item will be at pos: 0 + (5-4) = 1
        //second item 'i=1' will be at: 1 + (5-4) = 1
        //to handle values > n, use %, 
        //so the last item 'i=4' will be at: ( 4 + (5-4) ) % 5 = 5%5 = 0.  
        for(int i =0; i < n; i++){
            newArr[(i+(n-d))%n] = a[i];
        }
         for(int i =0; i < n; i++){
            System.out.print(newArr[i] + " ");
        }
    }
}
