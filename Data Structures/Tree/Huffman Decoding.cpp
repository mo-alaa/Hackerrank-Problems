/*
Language:   C++
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/tree-huffman-decoding/problem
*/  

void decode_huff(node * root, string s) {
    
    node * p = root;

    for(char c : s){
        if(c == '1'){
            p = p->right;
        }
        else{
            p = p->left;
        }

        if(p->data){
            cout<< p->data;
            p = root;
        }
    }
}
