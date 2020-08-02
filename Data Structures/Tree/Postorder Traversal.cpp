/*
Language:   C++
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:   https://www.hackerrank.com/challenges/tree-postorder-traversal/problem
*/ 

void postOrder(Node *root) {
  if(root == NULL) return;

  postOrder(root->left);
  postOrder(root->right);
  printf("%d ", root->data);

}
