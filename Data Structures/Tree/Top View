/*
Language:   C++
Author:     Mohamed Alaa
Github:     https://github.com/mo-alaa
Hackerrank: https://www.hackerrank.com/mo_alaa
Problem:    https://www.hackerrank.com/challenges/tree-top-view/problem
*/  

 void topView(Node * root) {
        //this algorithm is based on vertical + level order traversal
        if(root == NULL) return;

        //create a queue of (node, horizontal Distance)
        queue<pair<Node *,int>> Queue;
        Queue.push({root,0});
        //map will carry nodes that are already found 
        map<int, Node *> m;
        m.insert({0, root});
        
        while(!Queue.empty()){//stop when there are no more elements in the queue
            //pop form queue
            pair<Node*, int> p = Queue.front();
            Queue.pop();
            int Hd = p.second;//horizontalDistance

            //if node had left, push left to queue and map
            if(p.first->left != NULL){
                Queue.push({p.first->left, Hd-1});
                if(m.find(Hd-1) == m.end()){//if doesnt exist in the map, insert it
                    m.insert({Hd-1, p.first->left});
                }
            }   
            //if node had right, push left to queue and map
            if(p.first->right != NULL) {
                Queue.push({p.first->right, Hd+1});
                if(m.find(Hd+1) == m.end()){//if doesnt exist in the map, insert it
                    m.insert({Hd+1, p.first->right});
                }
            }
        }
        
        //print map output
        map<int, Node *>::iterator it;
        for(it = m.begin(); it!=m.end(); it++ ){
            printf("%d ", it->second->data);
        }
    }
    

//Note: I highly recommend watching this video: https://www.youtube.com/watch?v=PQKkr036wRc
