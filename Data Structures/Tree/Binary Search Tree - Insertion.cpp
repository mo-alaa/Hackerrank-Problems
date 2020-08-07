/*
Language:   C++
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/binary-search-tree-insertion/problem
*/  

Node * insert(Node * root, int data) {

  if(root == NULL){
      root = new Node(data);
  }
  else if(data <= root->data){
      root->left = insert(root->left, data);
  }
  else{
      root->right = insert(root->right, data);
  }
  return root;
}
