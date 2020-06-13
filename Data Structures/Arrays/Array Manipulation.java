/*
Language:   Java
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/crush/problem
*/

static long arrayManipulation(int n, int[][] queries) {
 
        long arr[] = new long[n];

      //remember we only care about the maximum sum and the start and end of the array
        for(int i =0; i<queries.length; i++){
            int a=queries[i][0];
            int b=queries[i][1];
            long k=queries[i][2];

            arr[a-1] += k;
            if(b < n) arr[b] -= k;
        }

        long temp = 0; long max = 0;
        for(int i =0; i < n; i++){
            temp += arr[i];
            if(temp > max) max = temp;
        }

        return max;
    }
 /*
 this problem could be solved with nested for loops, but the solution above is faster   
let's assume we have input like this:
5 3
1 2 100
2 5 100
3 4 100

by default the array will be like this
[0,      0,     0,     0,    0] then:
[100,    0,  -100,     0,    0] we added 100 at [1-1] and -100 at [2] because 2 <arr lenght
[100,  100,  -100,     0,    0] we added 100 at [2-1] and we didnt add -100 because 5 is not less than the arr length
[100,  100,     0,     0, -100] we added 100 at [3-1] and we -100 at [4] because 4 <arr lenght

now we should take the maxium sum for that array [100,100,0,0,-100] which is 200
 */
