let n=Number(prompt("Enter the number of elements in Array"));
let arr=[];
for(let i=0;i<n;i++){
    arr[i]=Number(prompt(`Enter element ${i+1}:`));
}
const output=arr.reduce((res,curr)=>{
    res=res+curr;
    return res;
})
console.log(output);