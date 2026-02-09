Node* insert(Npde* root,int val){
    if(root==NULL){
        return newNode(val);
    }
    if(val<root->val){
        root->left=insert(root->left,val);
    }
    else if(val>root->val){
        root->right=insert(root->right,val);
    }
    return root;
}

bool searchNode(Node* root,int val){
    if(root==NULL){
        return false;
    }
    if(root->val==val){
        return true;
    }
    if(val<root->val){
        return searchNode(root->left,val);
    }
    else{
        return searchNode(root->right,val);
    }
}
