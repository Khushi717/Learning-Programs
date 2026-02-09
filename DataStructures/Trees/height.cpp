void insert(NODE & root, int ele){
    if(root==NULL){
        NODE temp=newNode(ele);
        return;
    }
    deque<NODE> dq;
    dq.push_back(root);
    while(!dq.empty()){
        NODE temp=dq.front();
        if(temp->left==NULL){
            temp->left=ele;
        }
        else dq.push_back(temp->left);
        if(temp->right==NULL){
            temp->right=ele;
        }
        else dq.push_back(temp->right);
    dq.pop_front();
    }
}
 void insert(node* root, vector<string> bu){
    if(bu.empty() && bu[0]=="null") return;
    int i=1;
    deque<node*> dq;
    root=new node(stoi(bu[0]));
    dq.push_back(root);
    while(!dq.empty() && i<bu.size()){
        node* temp=dq.front();
        if(i<bu.size()){
            if(bu[i]!="null"){
                temp->left= node(stoi(bu[i]));
                dq.push_back(temp->left);
            }i++;
        }
        if(i<bu.size()){
            if(bu[i]!="null"){
                temp->right= node(stoi(bu[i]));
                dq.push_back(temp->right);
            }
            i++;
        }
        dq.pop_front();
    }
 }

 int height(node* root){
    if(!root) return 0;
    return 1+max(height(root->left),height(root->right));
 }
 int main(){
    int n;
    cin>>n;
    node* root=NULL;
    vector<int> bu;
    for(int i=0;i<n;i++){
        string val;
        cin>>val;
        bu.push_back(val);
    }
    insert(root,bu);
    cout<<height(root)<<endl;
 }