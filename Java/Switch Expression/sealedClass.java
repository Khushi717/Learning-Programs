import java.util.*;
sealed class swi permits A{
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int a=sc.nextInt();
        String st=switch(a){
            case 1->"This is case 1";
            case 2->{System.out.println("This is case 2");
            yield "ram";}
            case 3->"This is case 3";
            default->"This is case default";
        };
        System.out.println(st);
    }
}
final class A extends swi{}
//final class D extends swi{}































// #include <iostream>
// using namespace std;
// #include <string>

// int diameterOfBinaryTree(string treeStr) {
// 	// Write code here

// }

// int main(int argc, char *argv[]) {
// 	string treeStr(argv[1]);
// 	cout << diameterOfBinaryTree(treeStr) << "\n";
// 	return 0;
// }


// #include <iostream>
// using namespace std;
// #include <string>
// #include <sstream> // For stringstream
// #include <queue>   
// #include <vector>  
// #include <algorithm>


// struct TreeNode {
//     int val;
//     TreeNode *left;
//     TreeNode *right;
//     TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
// };


// TreeNode* buildTree(string treeStr) {//through bfs
//     if (treeStr.empty()) {
//         return nullptr;
//     }

//     stringstream ss(treeStr);
//     string word;

 
//     if (!(ss >> word) || word == "N") {
//         return nullptr;
//     }

//     TreeNode* root = new TreeNode(stoi(word));
//     queue<TreeNode*> q;
//     q.push(root);

   
//     while (ss >> word) {
//         TreeNode* current = q.front();
//         q.pop();

//         // Process the left child
//         if (word != "N") {
//             current->left = new TreeNode(stoi(word));
//             q.push(current->left);
//         }

//         // Process the right child
//         if (!(ss >> word)) {
//             // No more nodes, break
//             break;
//         }
//         if (word != "N") {
//             current->right = new TreeNode(stoi(word));
//             q.push(current->right);
//         }
//     }
//     return root;
// }


// void deleteTree(TreeNode* node) {
//     if (node == nullptr) return;
//     deleteTree(node->left);
//     deleteTree(node->right);
//     delete node;
// }


// int getHeight(TreeNode* node, int& diameter) {
  
//     if (node == nullptr) {
//         return 0;
//     }

 
//     int leftHeight = getHeight(node->left, diameter);
//     int rightHeight = getHeight(node->right, diameter);

    
//     diameter = max(diameter, leftHeight + rightHeight);

    
//     return 1 + max(leftHeight, rightHeight);
// }


// int diameterOfBinaryTree(string treeStr) {
	
//     TreeNode* root = buildTree(treeStr);
    
    
//     if (root == nullptr) {
//         return 0;
//     }

    
//     int diameter = 0; 
//     getHeight(root, diameter);
    
    

   
//     return diameter;
// }

// int main(int argc, char *argv[]) {
    
// 	string treeStr(argv[1]);
// 	cout << diameterOfBinaryTree(treeStr) << "\n";
// 	return 0;
// }