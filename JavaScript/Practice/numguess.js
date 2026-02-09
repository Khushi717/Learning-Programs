const target=(Math.floor(Math.random()*100))+1;
alert("Guess the number");
let num=Number(prompt("Enter the any random number"));
    while(num!==target){
        if(num<target){
            num=Number(prompt("guess a bigger number"));
        }
        if(num>target){
            num=Number(prompt("guess a smaller number"));
        }
    }
if(num==target){
console.log("Congo! You guessed the number");
}