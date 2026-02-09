for(int i=1;i<=sqrt(n);i++){
    if(n%i==0){
        arr.push_back(i);
        cnt++;
    if((n/i)!=i){
        arr.push_back(n/i);
        cnt++;
    }
}
}