/*
Language:   C++
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/tree-preorder-traversal/problem
*/ 

void preOrder(Node *root) {
  if(root == NULL) return;

  printf("%d ",root->data);
  preOrder(root->left);
  preOrder(root->right);
}
