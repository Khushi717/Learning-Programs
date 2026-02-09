#include<bits/stdc++.h>
struct node{
    int val;
    struct node* left;
    struct node* right;
};
typedef struct node* NODE;

NODE newNode(int ele){
    NODE temp=new node;
    temp->val=ele;
    temp->right=temp->right=NULL;
    return temp;
}

void insert(NODE &root,int ele){
    if(root==NULL){
        root=newNode(ele);
        return;
    }
    deque<NODE> dq;
    dq.push_back(root);
    while(!dq.empty()){
        NODE temp=dq.front();
        if(!temp->left){
            temp->left=newNode(ele);
            return;
        }
        else{
            dq.push_back(temp->left);
        }
        if(!temp->right){
            temp->right=newNode(ele);
            return;
        }
        else{
            dq.push_back(temp->right);
        }
        dq.pop_front();
    }
}
void inorder(NODE root,vector<int>& nums){
    if(root!=NULL){
        inorder(root->left,nums);
        nums.push_back(root->val);
        inorder(root->right,nums);
    }
}
void preorder(NODE root,vector<int>& nums){
    if(root!=NULL){
        nums.push_back(root->val);
        inorder(root->left,nums);
        inorder(root->right,nums);
    }
}


int main(){
    NODE root=NULL;
    int n;
    cin>>n;
    int op;
    vector<vector<int>> ans;
    int bu=0;
    for(int i=0;i<n;i++){
        cin>>op;
        if(op==1){
            //level order insertion
            int val;
            cin>>val;
            insert(root,val);
        }
        else if(op==2){
            //inorder traversal
            vector<int> nums;
            inorder(root,nums);
            ans.push_back(nums);
            if(nums.empty()) bu++;
        }
        else if(op==3){
            vector<int> nums;
            preorder(root,nums);
            ans.push_back(nums);
            if(nums.empty()) bu++;
        }

    }
    while(bu--){
        cout<<"Empty \n";
    }
    for(auto i : ans){
        for(int j : i){
            cout<<j<<" ";
        }
        cout<<"\n";
    }

}