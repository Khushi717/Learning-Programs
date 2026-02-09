node* insert(node* & root,int val){
    if(root==NULL){
        return node(ele);
        else if(val<root->data){
            root->left=insert(root->left,data);
        }
        else{
            root->right=insert(root->right,data);
        }
        return root;
    }
}
bool search(node* root,int ele){
    if(root==NULL) return false;
    else if(ele==root->val){
        return true;
    }
    else if(root->val>ele){
        return search(root->left,ele);
    }
    return search(root->right,ele);
}
node bubu(node* root,int ele){
    if(root->val>ele){
        return bubu(root->left,ele);
    }
    else{
        return bubu(root->right,ele);
    }
    return root;
}
int main(){
    int n;
    cin>>n;
    node* root=NULL;
    unordered_set<int> bu;
    for(int i=0;i<n;i++){
        int val;
        cin>>val;
        bu.insert(val);
        root=insert(root,data);
    }
    int n1;
    int n2;
    if(n2-n1==1){
        cout<<n1<<"\n";
        return 0;
    }
    for(int i=n1;i<n2;i++){
        if(bu.count(i)){
            node* lca=bubu(root,i);
        }
        if(search(lca,n1) && search(lca,n2)){
            cout<<i<<'\n';
            return 0;
        }
    }

}