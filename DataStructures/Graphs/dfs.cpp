#include<bits/stdc++.h>
using namespace std;
void dfs(int node,vector<int> &vis, vector<vector<int>> &mat,vector<int> &ans,int v){
	vis[node]=1;
	ans.push_back(node);
		for(int i=1;i<=v;i++){
		if(mat[node][i]==1 && !vis[i]){
			dfs(i,vis,mat,ans,v);
		}
	}
}
int main(){
	cout<<"Enter the number of vertices : ";
	int v;
	cin>>v;
	cout<<"Enter the number of edges : ";
	int e;
	cin>>e;
	vector<vector<int>> mat(v+1,vector<int>(v+1,0));
	for(int i=0;i<e;i++){
		int u,v;
		cout<<"Enter source : ";
		cin>>u;
		cout<<"Enter destination : ";
		cin>>v;
		mat[u][v]=1;
	}
	int start;
	cout<<"Enter Start Vertex for DFS : ";
	cin>>start;
	vector<int> vis(v+1,0);
	vector<int> ans;
	dfs(start,vis,mat,ans,v);
	// ans print
	cout<<"DFS of graph : "<<endl;
	for(auto itr : ans){
		cout<<itr<<"\n";
	}
	return 0;
}

