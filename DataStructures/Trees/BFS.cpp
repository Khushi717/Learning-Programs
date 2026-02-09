#include <iostream>
#include<queue>
using namespace std;

struct Node{
    int data;
    Node* left;
    Node* right;
    Node(int val){
        data=val;
        left=nullptr;
        right=nullptr;
    }
};
Node* insert(Node* root, int val){
    if(root==nullptr){
        return new Node(val);
    }
    if(val<root->data){
        root->left=insert(root->left,val);
    }
    else{
        root->right=insert(root->right,val);
    }
    return root;
}
void BFS(Node* root){
    vector<vector<int>> ans;
    if(root==nullptr){
        return ans;
    }
    queue<Node*>  q;
    q.push(root);
    while(!q.empty()){
        vector<int> level;
        for(int i=0;i<q.size();i++){
            Node* curr=q.front();
            q.pop();
            if(curr->left!=NULL)q.push(node->left);
            if(curr->right!=NULL)q.push(node->right);
            level.push_back(curr->data);
        }
        ans.push_back(level);
    }
    return ans;
}

int main(){
    int n;
    cin>>n;
    Node* root=nullptr;
    for(int i=0;i<n;i++){
        int val;
        cin>>val;
        root=insert(root,val);
    }
    BFS(root);
    return 0;
}