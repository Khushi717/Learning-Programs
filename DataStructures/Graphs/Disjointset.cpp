#include<bits/stdc++.h>
using namespace std;

void makeset(int n,vector<int> &parent, vector<int> &rank){
    for(int i=0;i<n;i++){
        parent[i]=i;
        rank[i]=0;
    }
}
int findparent(int p,vector<int> &parent){
    if(parent[p]==p){
        return p;
    }
    return findparent(parent[p],parent);
}
void makeunion(int u,int v,vector<int> &parent, vector<int> &rank){
    int up=findparent(u,parent);
    int vp=findparent(v,parent);
    if(up==vp){
        return;
    }
    if(rank[up]>rank[vp]){
        parent[vp]=up;
    }
    else if(rank[vp]>rank[up]){
        parent[up]=vp;
    }
    else{
        parent[vp]=up;
        rank[up]++;
    }
}
int main(){
    int n,e;
    cout<<"Enter the number of nodes: ";
    cin>>n;
    cout<<"Enter the number of edges: ";
    cin>>e;
    vector<int> parent(n);
    vector<int> rank(n);
    makeset(n,parent,rank);
    cout<<"Enter the edges: "<<endl;
    for(int i=0;i<e;i++){
        int u,v;
        cin>>u>>v;
        makeunion(u,v,parent,rank);
    }

    cout<<"\n Parent of each node: \n";
    for(int i=0;i<n;i++){
        cout<<"Node "<<i<<" has parent "<<findparent(i,parent)<<endl;
    }

    //check if elemets are in same set
    int x,y;
    cout<<"\nEnter two nodes to check if they are in same set: ";
    cin>>x>>y;
    if(findparent(x,parent)==findparent(y,parent)){
        cout<<"Nodes "<<x<<" and "<<y<<" are in the same set."<<endl;
    }
    else if(findparent(x,parent)!=findparent(y,parent)){
        cout<<"Nodes "<<x<<" and "<<y<<" are in different sets."<<endl;
    }
    else{
        cout<<"Invalid input."<<endl;
    }
    map<int,vector<int>> components;
    for(int i=0;i<n;i++){
        int p=findparent(i,parent);
        components[p].push_back(i);
    }
    for(auto it:components){
        cout<<"Component with parent "<<it.first<<" has nodes: ";
        for(auto pp:it.second){
            cout<<pp<<" ";
        }
        cout<<endl;
    }
    return 0;
}
