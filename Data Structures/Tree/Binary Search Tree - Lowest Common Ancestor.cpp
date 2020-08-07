/*
Language:   C++
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/binary-search-tree-lowest-common-ancestor/problem
*/ 

Node *lca(Node *root, int v1,int v2) {
    if(root == NULL)
        return NULL;

    if(root->data == v1 || root->data == v2)
        return root;

    Node *left = lca(root->left,v1,v2);
    Node *right = lca(root->right,v1,v2);

    if(left != NULL && right != NULL)
        return root;
    else if(left != NULL)
        return left;
    else 
        return  right;
}
