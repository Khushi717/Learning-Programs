let input=prompt("Enter the array");
let arr=input.split(" ").map(Number);
let marks=arr.filter((arr)=>{
    if(arr>90){
        return arr;
    }
})
console.log(marks);