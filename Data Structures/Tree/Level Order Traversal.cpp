/*
Language:   C++
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/tree-level-order-traversal/problem
*/ 

void levelOrder(Node * root) {
  if(root == NULL) return;
  
  queue<Node *> Queue;
  Queue.push(root);
  while(!Queue.empty()){
      Node * current = Queue.front();
      printf("%d ", current->data);
      if(current->left != NULL) Queue.push(current->left);
      if(current->right != NULL) Queue.push(current->right);
      Queue.pop();
  }
}
