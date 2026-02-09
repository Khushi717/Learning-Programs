//--------------better soln------------------
//-----------------xor----------------
 int res=0;
        for(int i=0;i<nums.size();i++){
            res=res^nums[i];
        }
        return res;


//-----------------better soln but cannot handle -ve numbers----------------
//--------hash-------------
int maxi=INT_MIN;
        for(int i=0;i<nums.size();i++){
            if(nums[i]>maxi){
                maxi=nums[i];
            }
        }
        vector<int> hash(maxi+1,0);
        for(int i=0;i<nums.size();i++){
            hash[nums[i]]++;
        }
        for(int i=0;i<maxi+1;i++){
            if(hash[i]==1){
                return i;
            }
        }
        return -1;
        //--------------map(can handle -ve numbers)-------------------
         map<int,int> mpp;
        for(int i=0;i<nums.size();i++){
            mpp[nums[i]]++;
        }
        for(auto it:mpp){
            if(it.second==1){
                return it.first;
            }
        }
        return -1;



    //-----------mycode(can handle -ve numbers)-------------
    int ans=0;
        for(int i=0;i<nums.size();i++){
                bool repeat=false;
                for(int j=0;j<nums.size();j++){
                    if(i!=j && nums[i]==nums[j]){
                        repeat=true;
                        break;
                    }
                }
                if(!repeat){
                    ans=nums[i];
                    break;
                }    
        }
        return ans;
