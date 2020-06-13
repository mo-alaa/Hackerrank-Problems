 /*
Language:   Java
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/sparse-arrays/problem
*/

 static int[] matchingStrings(String[] strings, String[] queries) {
        int [] results = new int[queries.length];
        //1 using hashmap O(strings.length + queries.length) i.e o(n+m)
        Map <String, Integer> map = new HashMap<>();
        for(String content: strings){
            if(map.containsKey(content)){
                map.put(content, map.get(content) + 1);
            }
            else{
                map.put(content, 1);
            }
        }

        for(int i =0; i < queries.length; i++){
            results[i] = map.containsKey(queries[i]) ? map.get(queries[i]) : 0;
        }

        //2 using nested forloops O(strings.length * queries.length) i.e o(n*m)
        // for(int i = 0; i < queries.length; i++) {
        //     int sum = 0;
        //     for(int j = 0; j < strings.length; j++){
        //         if(strings[j].equals(queries[i])){
        //             sum ++;
        //         }
        //     }
        //     results[i] = sum;
        // }
        return results;
    }
