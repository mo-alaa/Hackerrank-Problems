 /*
Language:   Java
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:   https://www.hackerrank.com/challenges/dynamic-array/problem
*/
 
 public static List<Integer> dynamicArray(int n, List<List<Integer>> queries) {
    // Write your code here
        int lastAnswer = 0; 
        List<Integer> lAnswerList = new ArrayList<Integer>();
        List<Integer> []sequenceList = new List[n]; //array of lists

        for(int i = 0; i < sequenceList.length; i++){
            sequenceList[i] = new ArrayList<Integer>(); 
        }

        for(int i = 0; i < queries.size(); i++){
            int x = queries.get(i).get(1);
            int y = queries.get(i).get(2);

            List<Integer> seq = sequenceList[(x^lastAnswer)%n];
            
            if(queries.get(i).get(0) == 1){ // query 1
               seq.add(y);  
            }
            else { //query 2
               lastAnswer = seq.get(y%(seq.size()));
               lAnswerList.add(lastAnswer);  
            }
        }
        return lAnswerList;
    }
