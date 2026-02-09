let num="121"
let i=0;
let j=num.length-1;
let chonchu=false;
while(i<j){
    if(num[i]!==num[j]){
        chonchu=true;
        break;
    }
    i++;
    j--;
}
if(!chonchu){
    console.log("It is a palindrome");
}
if(chonchu){
    console.log("It is not palindrome");
}