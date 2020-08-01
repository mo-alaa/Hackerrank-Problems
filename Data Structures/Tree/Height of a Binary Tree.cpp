      /*
Language:   C++
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/tree-height-of-a-binary-tree/problem
*/  

 int max(int left, int right) {
        return left > right ? left : right;  
    }

    int height(Node* root) {
        // Write your code here.
        if(root == NULL){
            return -1;
        }
        return max(height(root->left), height(root->right)) + 1;
    }
