/*
Language:   C++
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/tree-inorder-traversal
*/ 

void inOrder(Node *root) {
  if(root == NULL) return;

  inOrder(root->left);
  printf("%d ",root->data);
  inOrder(root->right);
}
