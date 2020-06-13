/*
Language:   Java
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/2d-array/problem
*/

 static int hourglassSum(int[][] arr) {
        int length = 6;
        int max = -63;
        for(int i = 0; i < length-2; i++){
            for(int j = 0; j < length-2; j++){
                int sum = arr[i][j] + arr[i][j+1] + arr[i][j+2] +   
                                    arr[i+1][j+1] + 
                        arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2];
                if(sum > max){
                    max = sum;
                }
            }
        }
        return max;

    }
