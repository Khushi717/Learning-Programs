//function using rest operator to access multiple numbers and return sum
function summ(...numbers){
    let sum=0;
    for(let itr of numbers){
        sum+=itr;
    }
    return sum;
}
console.log(summ(10,20,30));