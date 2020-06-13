 /*
Language:   Java
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/arrays-ds/problem
*/

static int[] reverseArray(int[] a) {
  int length = a.length;
  int temp = 0;
  for(int i = 0; i < length / 2; i++){
      temp = a[i];
      a[i] = a[length - 1 - i];
      a[length - 1 - i] = temp;
  }
  return a;
}
