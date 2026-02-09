#include<bits/stdc++.h>
using namespace std;
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
	cout<<"Enter Start Vertex for BFS : ";
	cin>>start;
	vector<int> vis(v+1,0);
	vis[start]=1;
	queue<int> q;
	q.push(start);
	vector<int> bfs;
	while(!q.empty()){
		int node=q.front();
		q.pop();
		bfs.push_back(node);
		for(int i=1;i<=v;i++){
			if(mat[node][i]==1 && !vis[i]){
				vis[i]=1;
				q.push(i);
			}
		}
	}
	cout<<"BFS of graph : "<<endl;
	for( auto itr : bfs){
		cout<<itr<<"\n";
	}
}

// Take a node from queue

// Add it to BFS order

// Look at all possible nodes

// Check which ones are neighbors

// If a neighbor is not visited
// → mark visited
// → push into queue

// Continue until queue is empty