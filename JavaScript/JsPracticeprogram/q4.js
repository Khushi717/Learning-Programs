//passing array elements as function arguments using spread operator 
const num=[1,2,3];
function sum(a,b,c){
    return a+b+c;
}
console.log(sum(...num));