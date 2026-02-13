//function using rest operator to access multiple numbers and return sum
function summ(...numbers){
    let sum=0;
    for(let itr of numbers){
        sum+=itr;
    }
    return sum;
}
console.log(summ(10,20,30));



const num=[1,2,3];
function sum(a,b,c){
    return a+b+c;
}
console.log(sum(...num));